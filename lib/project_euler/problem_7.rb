require 'mathn'

class ProblemSeven

  def primes(n)
    Prime.each(n).to_a
  end

  def prime_finder(n)
    primelist = []
    primesize = 1
    until primelist.length == n
      primelist = primes(primesize)
      primesize += 1
      p primelist.length
    end
    primelist.last
  end

end
