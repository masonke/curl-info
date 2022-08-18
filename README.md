# Curl info

This is a work in progress.

It is a collection of information that I have found handy to have when testing curl, including timings with curl-times.txt.

When used with curl, it prints out connection information, timings and upload / download speeds and bytes and other details.

To use curl-times, add it to the command line with the -w option -w "@/home/$USER/curl-info/curl-times.txt" If curl-times.txt is in the current directory, the path can be dropped

## Basic Usage:
```
curl -L -w "@/home/$USER/curl-info/curl-times.txt"  -o /dev/null https://www.example.com/v1/foo
```
To hit a specific host by IP address, you will usually need the host header.

```
curl -L -w "@curl-times.txt" -H "Host: www.example.com" -o /dev/null https://10.100.200.22/v1/foo
```
Use -L to follow redirects
Use -v for verbose output

### Output from curl-times.txt
```
$ curl -L -w "@curl-times.txt" -o /dev/null https://www.example.com/foo/


Local IP:     192.168.139.15
Local Port:   62666
Remote IP:    172.16.12.2
Remote Port:  443

http version: 1.1
http code:    401
Connections:  1
Redirects:    0

Timing
---------------------------------------------
DNS/Name Lookup:   0.007140
TCP connect time:  0.024021
TLS connect time:  0.088887
Pre-transfer time: 0.089197 (this is pure cpu time)
Redirect time:     0.000000
Start transfer:    0.107078
                     ----------
Total Time:        0.107298
---------------------------------------------

Header size:   143 Bytes
Request size:  112 Bytes

Download Size: 147 Bytes
Upload Size:   0 Bytes

Download speed: 1370 Bytes/s
Upload speed:   0 Bytes/s
```

## Links of interest:
For an interesting read on how timings work in curl, check out
https://blog.cloudflare.com/a-question-of-timing/

Everything curl literally covers everything
https://github.com/bagder/everything-curl

Cheat Sheet on Curl Performance Metrics: how to benchmark server latency with curl
https://speedtestdemon.com/a-guide-to-curls-performance-metrics-how-to-analyze-a-speed-test-result/#What_does_curls_time_pretransfer_mean