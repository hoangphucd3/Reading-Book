Pipe is a uni-directional stream of data. A process can do only read or write on pipe at the same time.

Create a pipe:

`reader, writer = IO.pipe #=> [#<IO:fd 5>, #<IO:fd 6>]`

