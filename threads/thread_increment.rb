#!/usr/bin/ruby
$x=30
$updatevar=0.001
$printvar=1

def increment
   while true
      $x=$x+1
      sleep($updatevar)
   end
end

def decrement
   x=30
   while true
      $x=$x-1
      sleep($updatevar)
   end
end

def print
   while true
      puts "x is #{$x}"
      sleep($printvar) 
   end
end

t1=Thread.new{increment()}
t2=Thread.new{decrement()}
t3=Thread.new{print()}
t1.join
t2.join
t3.join
