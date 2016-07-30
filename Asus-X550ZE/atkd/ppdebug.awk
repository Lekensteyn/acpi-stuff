#!/usr/bin/awk -f
# Injects some debug code in the function body, to print the current method
# name and arguments.
#
# Set -vp=asus-dbg if you would like to change the output name.

BEGIN {
    # for DefinitionBlock modification
    FS="\"";
    OFS="\"";
}
/^DefinitionBlock/ {
    if (p) {
        $2 = p ".asl"
    }
}

/DRAGONS/{ok=1}
ok && /^ *Method /{
    split($0, a, "[(, ]*");
    name=a[3]; args=a[4]; line=NR+2
}
line==NR{
    print "LOGT()";
    #print "LOGM(Timer())";
    print "LOGM(\""name", "args"\")";
    for(i=0;i<args;i++)
        print "LOGM(Arg"i")";
    print "LOGM(\"\")"
}
1
