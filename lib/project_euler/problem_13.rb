class ProblemThirteen

  def build_array_from_file(filename)
    contents = []
    File.open(File.expand_path('lib/project_euler/' + filename), 'r') do |file|
      while line = file.gets
        contents << line.chomp
      end
    end
    contents
  end

  def format_contents(a)
    a.collect { |v| v.to_i }
  end

  def sum_of_large_integers(filename)
    a = format_contents(build_array_from_file(filename))
    a.inject(0) { |sum, n| sum + n }
  end

  def problem_13_solver
    sum = sum_of_large_integers("large_sum.txt")
    sum.to_s[0..9].to_i
  end

end
