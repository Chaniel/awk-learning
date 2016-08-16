# awk-learning

awk 'BEGIN{ print "start" } pattern { commands } END{ print "end" }' file


1. at the start, execute BEGIN{commands} block.
2. read one line from file or stdin, then execute pattern {commands}. repeat this process, until all file are read.
3. at the end of input stream, execute END{ commands } block.


**special variables **
NR: number of records, 记录数据 ， 行号
NF: number of fields, 字段数量， 当前的字段数
$0: 当前整行文本内容
$1: 第一个字段的文本内容
$2: 第二个字段的文本内容


- awk is a report generating tool/language.
- gawk: gnu awk
- /bin/awk -> gawk
