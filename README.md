# awk-learning

awk 'BEGIN{ print "start" } pattern { commands } END{ print "end" }' file


1. at the start, execute BEGIN{commands} block.
2. read one line from file or stdin, then execute pattern {commands}. repeat this process, until all file are read.
3. at the end of input stream, execute END{ commands } block.


- awk is a report generating tool/language.
- gawk: gnu awk
- /bin/awk -> gawk
