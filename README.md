## bash scripts

### strip-float.sh

 - Parse a log file for '<filter words> <float>ms' and strip everything else
but the float out.

```
cat logfile.log | ./strip-float.sh -f something > output.txt

cat output.txt
8.56
9.68
7.5558

```

### flt-time.sh

 - Parse a log file and return the time of the log and a floating point number
in that line, comma separated.

```
cat logfile.log | ./flt-time.sh -f something > output.txt

cat output.txt
7:07:137,0.456
7:08:137,0.135
7:09:145,0.127
```
