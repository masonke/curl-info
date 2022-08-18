This is a collection of information that I have found handy when using curl. 

Included in this repo is the file curl-times.txt. When used with curl, it prints out connection information, timings and upload / download speeds and bytes. 


To use curl-times, add it to the -w option `-w "@curl-times.txt"`
# Basic Usage:\n
---------------------------------------------\n
# curl -L -w "@curl-times.txt" -H "Host: www.example.com" -o /dev/null https://www.example.com/v1/foo  \n
# \n
# To hit a specific host by IP address, you will usually need the host header.\n
# curl -L -w "@curl-times.txt" -H "Host: www.example.com" -o /dev/null https://10.100.200.22/v1/foo     \n
\n
# Use -L to follow redirects\n
# Use -v for verbose output\n\n
# https://blog.cloudflare.com/a-question-of-timing/ \n
\n\n
