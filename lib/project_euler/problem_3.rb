class ProblemThree

  def primes(n)
    primes = []
    candidate = 2
    while n > 1
      if n % candidate == 0
        primes << candidate
        n /= candidate
      end
      candidate += 1
    end
    primes
  end

  def highest_prime_factor(n)
    prime_set = self.primes(n)
    prime_set.last
  end

end
