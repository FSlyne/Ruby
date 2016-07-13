
$queue1=Queue.new
$queue2=Queue.new
$queue3=Queue.new
$queue4=Queue.new

$svar=1

class QinQout
  def initialize(qin, qout)
      @qin = qin
      @qout = qout
  end
  def process
    while true
        @qout.push(func(@qin.pop))
    end
  end
  def func(n)
  end
end

class Add1 < QinQout
  def func(n)
    return n+1
  end
end

class Mult10 < QinQout
  def func(n)
    return n*10
  end
end

class Sub2 < QinQout
  def func(n)
    return n-2
 end
end

def gen_random(qin)
  while true do
    qin.push(rand(1..100))
    sleep($svar)
  end
end

def prn(qout)
  while true do
       puts qout.pop
  end
end

threads = []

threads << Thread.new{gen_random($queue1)}
threads << Thread.new{Add1.new($queue1,$queue2).process}
threads << Thread.new{Mult10.new($queue2,$queue3).process}
threads << Thread.new{Sub2.new($queue3,$queue4).process}
threads << Thread.new{prn($queue4)}

threads.each { |t| t.join }

