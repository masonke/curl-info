# Curl info

This is a collection of information that I have found handy to have when testing curl, including curl-times.txt. 

When used with curl, it prints out connection information, timings and upload / download speeds and bytes and other details. . 


To use curl-times, add it to the command line with the -w option `-w "@/home/$USER/curl-info/curl-times.txt"`

If curl-times.txt is in the current directory, the path can be dropped


## Basic Usage:

```
curl -L -w "@/home/$USER/curl-info/curl-times.txt"  -o /dev/null https://www.example.com/v1/foo  
``` 

To hit a specific host by IP address, you will usually need the host header.
```
curl -L -w "@curl-times.txt" -H "Host: www.example.com" -o /dev/null https://10.100.200.22/v1/foo
```

- Use -L to follow redirects
- Use -v for verbose output

For an interesting read on how timings work in curl, check out https://blog.cloudflare.com/a-question-of-timing/ 

