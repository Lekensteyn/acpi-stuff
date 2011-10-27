#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include <ctype.h>

#define MAX_LINE_LEN 1024

#define ARR_LEN(a) (sizeof(a)/sizeof(a[0]))

/**
 * For each line:
 * 1. ignore empty lines
 * 2. count leading spaces
 * 3. if the current indentation level is greater than the maximum allowed,
 *    skip the line. The max level is set if the keyword is not an object
 *    creation one, but sth like If
 * 4. If there is a object creation keyword matching (e.g. Scope), save the
 *    name between which consists of _, A-Z 0-9 _ \ and ^ and save the
 *    indentation level to 'indentation_level'
 * 5. if matched {, there will be searched for a new level
 * 6. The next line with indentation_level_of_line < indentation_level will
 *    open a new level and indentation_level_of_line will be stored
 * 6. if indentation_level_of_line > current_indentation, the level is left
 */

// Named object creation keywords
char *noc_keywords[] = { "Alias", "Buffer", "Device",
    "Function", "Method", "Name", "Package", "PowerResource", "Processor",
    "Scope", "ThermalZone" };

// checks if the keyword matches a named object creation keyword
int matches_noc_keyword (char *keyword) {
    for (int i=0; i<ARR_LEN(noc_keywords); i++) {
        strcasecmp(keyword, noc_keywords[i]) || return 0;
    }
    // no match, possibly an If. In this case, childs can be ignored
    return 1;
}

int parse_file(char *filename) {
    FILE *fp = fopen(filename, "r");
    if (!fp) {
        char *msg = (char*)malloc(strlen(filename) + strlen("Failed to open ''"));
        sprintf(msg, "Failed to open '%s'", filename);
        perror(msg);
        free(msg);
        free(filename);
        return 1;
    } else {
        char line[MAX_LINE_LEN];
        char current_level[MAX_LINE_LEN];
        int indent_count;

        while (fgets(line, MAX_LINE_LEN, fp)) {
            char *current = line;
            int inc;

            while (*current == ' ') current++;
            indent_count = line - current;

            while (isalnum(*current)) current++;
            keyword

            inc = strlen(line);
            //current += inc > 5 ? 5 : 0;
            printf("%s", current);
        }
    }

    fclose(fp);
    return 0;
}

int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s filename.dsl\n", argv[0]);
        return 1;
    }
    return parse_file(argv[1]);
}