Every process running has a parent process. Each process knows its parent process identifier ('ppid').

For example, the `ls` process which runs in Terminal.app is the child of `bash` process.

Get pid of current parent process in Ruby

```ruby
puts Process.ppid
```
