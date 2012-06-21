class ProblemTen

  def sum_of_primes(ceiling)
    primes = Prime.take_while { |n| n < ceiling }
    sum = primes.inject { |sum, n| sum += n }
  end

end
