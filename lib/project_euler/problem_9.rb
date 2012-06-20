class ProblemNine

  def three_added_equals_sum?(a, b, c, sum)
    a + b + c == sum ? true : false
  end

  def sum_two_squares(a, b)
    return a**2 + b**2
  end

  def pythag_triplet?(a, b, c)
    a**2 + b**2 == c**2 ? true : false
  end

  def pythag_triplet_finder(sum, ceiling)
    triplet = []
    1.upto(ceiling) do |a|
      2.upto(ceiling) do |b|
        3.upto(ceiling) do |c|
          if three_added_equals_sum?(a, b, c, sum) && pythag_triplet?(a, b, c)
            return triplet << a << b << c
          end
        end
      end
    end
    p "no triplet found"
  end

  def product_of_three(a, b, c)
    return a * b * c
  end

end


