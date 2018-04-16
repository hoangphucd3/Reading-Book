Every process running on system has a unique process identifier - 'pid'

## System Calls
Ruby's `Process.pid` maps to getpid(2).

You can access value of current pid through a global variable: `$$`

But I avoid it when possible. `Process.pid` is much more expressive of your intent than the dollar-dollar variable.
