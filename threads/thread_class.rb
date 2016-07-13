class MyClass
  def run
      while 1<2 do
         print "Hello"
         sleep(2)
      end
  end
end

threads = []

# start creating active objects by creating an object and assigning
# a thread to each

threads << Thread.new { MyClass.new.run }

# now we're done just wait for all objects to finish ....

threads.each { |t| t.join }
