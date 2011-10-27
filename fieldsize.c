/**
 * Copyright (C) 2011  Peter Lekensteyn <lekensteyn@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <strings.h>
#include <stdlib.h>

#define BUFSIZE 64

void parse_error(char *msg, char *line, char *current) {
    fprintf(stderr, "%s\n", msg);
    fprintf(stderr, " at pos %lu in line %s\n",
        1 + current - line, line);
    exit(1);
}
#define SKIP_SPACES(str) while (isspace(*str)) str++;


// stores the name segment from str in name
void nameSeg(char *str, char *name) {
    int i;
    memset(name, 0, sizeof(name));
    for (i=0; i<4; i++, str++) {
        if (!*str)
            break;
        // NameSeg = Alpha (Alpha | digits){0,3}
        if ((i && isalpha(*str)) ||
                  isalnum(*str))
            name[i] = *str;
        else
            break;
    }
}

// returns the number read from *str and moves the pointer
int readNumber(char **str) {
    if (strlen(*str) >= 2 && !strncasecmp("0x", *str, 2)) {
        (*str) += 2;
        return strtol(*str, str, 16);
    } else {
        return strtol(*str, str, 10);
    }
}

// get the comment contents found in str
// unused, implement if there is a need for retrieving comments
void get_comment(char *str, char **target) {
    // begin comment?
    if (*str == '/') {
        if (!*(++str)) return;
        // begin single-line comment
        if (*str == '/') {
            str++;
            SKIP_SPACES(str);
            strcpy(*target, str);
        } else if (*str == '*') {
            str++;
            SKIP_SPACES(str);
            // XXX copy & remove */
        }
    }
}

int main(int argc, char **argv) {

    char line[BUFSIZE];
    //char comment[BUFSIZE];
    // index in bits
    int index = 0;

    while (fgets(line, sizeof(line), stdin) != NULL) {
        char *c = line;

        // skip leading spaces
        SKIP_SPACES(c);

        // skip empty lines and comments
        if (!*c || *c == '/')
            continue;

        if (strlen(c) > 8 && !strncasecmp("AccessAs", c, 8)) /* ignore */;
        else if (strlen(c) > 9 && !strncasecmp("Offset", c, 6)) {
            // matching for Offset(x)
            c += 6;
            int offset;

            SKIP_SPACES(c);
            if (!*c || *(c++) != '(')
                parse_error("Expected a parenthese after Offset.", line, c);

            offset = readNumber(&c);
            if (offset < 0)
                parse_error("Offset cannot be negative", line, c);
            index = 8 * offset;

            SKIP_SPACES(c);
            if (*c != ')')
                parse_error("Expected a parenthese after Offset.", line, c);
            printf("Offset (0x%02X), // byte 0x%02X  bit %i\n", offset,
                index / 8, index % 8);
        } else {
            char name[5];
            nameSeg(c, name);
            int size;
            c += strlen(name);

            // if no name was found, ignore it, probably alignment?

            SKIP_SPACES(c);
            if (*c != ',')
                parse_error("Expected a CommaChar but encountered invalid data.", line, c);
            c++;
            SKIP_SPACES(c);

            size = readNumber(&c);
            if (size < 0)
                parse_error("BitLength must not be negative", line, c);

            SKIP_SPACES(c);
            if (*c && *c != ',' && *c != '/')
                parse_error("Expected a comma, comment or null but encountered data.", line, c);
            printf("%4s,   %2i,    // byte 0x%02X  bit %i\n", name, size,
                index / 8, index % 8);

            index += size;
        }
    }
    return 0;
}
