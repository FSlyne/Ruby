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

prod_arr = []
cons_arr = []

10.times do |i|
   prod_arr[i] = Thread.new{producer()}
#   prod_arr[i].join()
end

10.times do |i|
   cons_arr[i] = Thread.new{consumer()}
#   cons_arr[i].join()
end

while true
  sleep(5)
end
