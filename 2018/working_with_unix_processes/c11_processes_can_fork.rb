The child process inherits a copy of all of the memory in use of the parent process, as well as any open file descriptors
belonging to the parent process.

In the child process, `fork` returns `nil`.

In the parent process, `fork` returns the pid of the newly created child process.
