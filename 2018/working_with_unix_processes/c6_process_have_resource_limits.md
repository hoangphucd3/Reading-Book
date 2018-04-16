How many file descriptors can one process have?

There are some resource limits imposed on a process by the kernel.

## Finding the Limits

Get maximum number of allowed file descriptors:

`p Process.getrlimit(:NOFILE)`

Output:

`[2560, 9223372036854775807]`

First element in the Array is the soft limit, the second element is the hard limit.

## Soft Limits vs. Hard Limits

Soft limit isn't really a limit.

If you excedd the soft limit, an exception will be raised
