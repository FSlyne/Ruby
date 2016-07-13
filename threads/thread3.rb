
$queue1=Queue.new
$queue2=Queue.new
$queue3=Queue.new
$queue4=Queue.new

$svar=1

def gen_random
  while 1<2
    $n=rand(1..100)
    $queue1.push($n)
    sleep($svar)
  end
end

def add1
  while 1<2
    while not $queue1.empty?
       $n = $queue1.pop
       $n=$n+1
       $queue2.push($n)
    end
  end
end

def mult10
  while 1<2
    while not $queue2.empty?
       $n = $queue2.pop
       $n=$n*10
       $queue3.push($n)
    end
  end
end

def sub2
  while 1<2
    while not $queue3.empty?
       $n = $queue3.pop
       $n=$n-2
       $queue4.push($n)
    end
  end
end

def prn
  while 1<2
    while not $queue4.empty?
       $n = $queue4.pop
       puts $n
    end
  end
end

t1=Thread.new{gen_random()}
t2=Thread.new{add1()}
t3=Thread.new{mult10()}
t4=Thread.new{sub2()}
t5=Thread.new{prn()}

while 1<2
  sleep(5)
end


