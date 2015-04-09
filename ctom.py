import sys
csv = open(sys.argv[1], 'r')
i = 0
for line in csv:
    line = line[:-1] #get rid of newline char
    count = len(line.split(","))
    line = "|"+line
    line = line.replace(",","|")
    print line + "|"
    if i==0:
           res = "|"
           res = res + "|".join(["-----" for j in range(count)])
           print res+"|"
    i = i+1
