# Chapter 6 - Connecting to Services

## Blocking I/O, Threading, and Parallelism

### Asynchronous I/O

 A typical pattern with asynchronous I/O is to create handler code that gets
called when each request is done, commonly referred to as a reactor design pattern

### Multi-threading

## Logging for Performance

When you have the request info logged to a file, you can calculate some useful statistics.
These are the most important things you’d want to calculate:
- Average response time
- Minimum response time
- Maximum response time
- Number of failures and percentage of requests that fail
- Percentage of requests served within certain time
