In the land of Unix 'everything is a file'. Ex: Devices are treated as files, sockets and pipes are treated as files.

We will use the word 'resource' when talking about files in a general sense, file when meaning the classical definition.

## Descriptors represent resources

Anytime you open a resource in a running process, it is assigned a file descriptor number. They are not shared between unrelated process.

Any resource the your process opens gets a unique number identifying it.

File descriptors keep track of open resources only. Closed resources are not given a file descriptor number.

The lowest value of file descriptor numbe ris `3`. Why?

## Standard Streams

Every Unix process come with three open resources.

- STDIN: standard input - read input from keyboard devices or pipes - fileno 0
- STDOUT: standard output - write output to monitors - fileno 1
- STDERR: standard error - same as STDOUT - fileno 2

