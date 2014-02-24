class ProblemTwelve

  def trianglize(n)
    (1..n).inject(0) { |sum, n| sum + n }
  end

  def factorize(n)
    lower_factors = []
    higher_factors = []
    (1..n).each do |x|
      if n % x == 0
        lower_factors << x
        higher_factors << n/x
      end
      break if x >= higher_factors.last
    end
    (lower_factors + higher_factors.reverse).uniq
  end

  def count_factors(n)
   factorize(n).size
  end

  def problem_12_solver
    n =1
    not_at_500 = true
    while not_at_500
      y = trianglize(n)
      factors_size = count_factors(y)
      n += 1
      not_at_500 = false if factors_size > 500
    end
    n
  end

end


