#!/usr/bin/awk -f
# Injects some debug code in the function body, to print the current method
# name (and path) and arguments. Addition of this debug code starts after
# encountering the special string "DRAGONS".
#
# Set -vp=asus-dbg if you would like to change the output name.

BEGIN {
    # for DefinitionBlock modification
    FS="\"";
    OFS="\"";

    # paths[x] is the current path at indention level x.
    delete paths
    paths[1] = "\\"
}
/^DefinitionBlock/ {
    if (p) {
        $2 = p ".asl"
    }
}

# Assume indentation being a multiple of four spaces.  Each indentation level
# could completely change the namespace, so keep track of that. Note that
# paths[x] could be "\\" for levels > 1.
{
    split($0, a, "[^ ]");
    level = length(a[1]) / 4
}
/^ *(Device|Scope) / {
    split($0, a, "[(, )]*");
    path = paths[level]
    newpath = a[3]

    if (newpath !~ /^\\/) {
        # Relative path, split into components and resolve.
        ncomp = split(path, comp, "[.]");

        # Drop leaf nodes from the old path if prefixed with one or more '^'.
        if (match(newpath, /^\^+/)) {
            ncomp -= RLENGTH
            newpath = substr(newpath, 1 + RLENGTH)
        }

        # Prepend old prefix to the new path.
        for (i = ncomp; i >= 1; i--)
            newpath = comp[i] "." newpath;
        sub(/^[\\.]*/, "\\", newpath)
    }
    # Set the path for the *next* indentation level which is affected by this.
    paths[level + 1] = newpath;
}

/DRAGONS/{ok=1}
ok && /^ *Method /{
    split($0, a, "[(, )]*");
    name=a[3]; args=a[4]; line=NR+2

    if (paths[level] == "\\") {
        name = "\\" name
    } else {
        name = paths[level] "." name
    }
}
line==NR{
    print "LOGT()";
    #print "LOGM(Timer())";
    print "LOGM(\""name", "args"\")";
    for(i=0;i<args;i++)
        print "LOGM(Arg"i")";
    print "LOGM(\"\")"
}

# Print result
1
