class ProblemSix

  def sum_of_squares(n)
    sum = 0
    n.downto(1) { |x| sum += x**2  }
    sum
  end

  def squares_of_sums(n)
    sum = 0
    1.upto(n) { |x| sum += x }
    sum**2
  end

  def difference_of_the_sums(n)
    return squares_of_sums(n) - sum_of_squares(n)
  end

end
