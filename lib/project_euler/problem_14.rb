class ProblemFourteen

  def collatz_sequence(n)
    seq = []
    seq << n
    while n > 1
      if n % 2 == 0
        n = n / 2
        seq << n
      else
        n = (3 * n) + 1
        seq << n
      end
      seq
    end
    seq
  end

  def problem_14_solver
    max_size = 0
    solution = 0
    999999.downto(1) do |x|
      seq_size = collatz_sequence(x).size
      if seq_size > max_size
        solution = x
        max_size = seq_size
      end
    end
    solution
  end

end


