class ProblemEight

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
    filtered = []
    final_contents = []
    a.join.chars { |ch| filtered << ch }
    filtered.each { |ch| final_contents << ch.to_i }
    final_contents
  end

  def product_of_five(a)
    a.inject { |product, n| product *= n }
  end

  def highest_five_product(a)
    highest = 0
    a.each_cons(5) do |slice|
      slice_value = product_of_five(slice)
      highest = slice_value if slice_value > highest
    end
    highest
  end

end
