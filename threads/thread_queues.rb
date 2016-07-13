#!/usr/bin/ruby
$updatevar=0.1
$printvar=1

$queue = Queue.new

def producer
   while true
      $queue.push("A")
      sleep($updatevar)
   end
end

def consumer
   while not $queue.empty?
      puts $queue.pop
      sleep($updatevar)
   end
end

def print
   while true
      puts "x is #{$x}"
      sleep($printvar) 
   end
end

t1=Thread.new{producer()}
t2=Thread.new{consumer()}
t3=Thread.new{consumer()}
t1.join
t2.join
