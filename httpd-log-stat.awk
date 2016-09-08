awk '{ip[$1]++} END{for(key in ip) {print key, ip[key]}  }' /var/log/httpd/access.log

awk -F" " '{ips[$1]++} END {for(ip in ips) {print ip, ips[ip]}}' access.log  | sort -r -k2 -n

netstat -ant | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'
#每出现一被/^tcp/模式匹配到的行，数组S[$NF]就加1，NF为当前匹配到的行的最后一个字段，此处用其值做为数组S的元素索引；

awk '{counts[$1]++}; END {for(url in counts) print counts[url], url}' /var/log/httpd/access_log
#用法与上一个例子相同，用于统计某日志文件中IP地的访问量


# 统计访问量在前10名的IP的地址
awk '{print $1}' access.log | uniq -c | sort -k1 -nr | head -10
cat access.log  | cut -f 1 -d" " | uniq  -c | sort -nr -k1 | head -n 10
