class ProblemFive
  def lowest_divisible_number
    1.upto(1000000000000) do |n|
      return n if divisible_through_20(n)
    end
  end

  def divisible_through_20(n)
    (1..20).each do |d|
      return false if n % d != 0
    end
    return true
  end
end

answer = ProblemFive.new

p answer.lowest_divisible_number
