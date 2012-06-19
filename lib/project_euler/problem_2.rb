class ProblemTwo

  def fib(n)
    n < 2 ? n : fib(n-1) + fib(n-2)
  end

  def fib_set(n)
    fibs = []
    (n - 1).downto(0) { |x| fibs << fib(x) }
    fibs.reverse
  end

  def even_fib_sum(n)
    sum = 0
    fib_set(n).each { |x| sum += x if x % 2 == 0 }
    sum
  end

  def calculate_even_fib_sum(ceiling)
    n = 1
    fib_value = 0
    while(fib_value < ceiling)
      fib_value = fib(n)
      n += 1
    end
    even_fib_sum(n - 1)
  end

end
