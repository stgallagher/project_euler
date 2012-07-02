class ProblemEleven

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
    characterized = []
    removed_empty_strings = []
    strings_to_integers = []
    two_digit_integer_strings = []
    integers = []

    a.join.chars { |ch| characterized << ch }
    removed_empty_strings = characterized.reject { |n| n == " " }
    removed_empty_strings.each { |ch| strings_to_integers << ch.to_i }
    strings_to_integers.each_slice(2) { |s| two_digit_integer_strings << s.join }
    two_digit_integer_strings.each { |n| integers << n.to_i }
    integers
  end

  def square_parceler(square_length, grid)
    square_sample = []
    grid_length = grid_length_finder(square_length, grid)
    upper_right_corner = 0
    while upper_right_corner < (grid.size - (((square_length - 1) * grid_length) + square_length))
      while upper_right_corner % grid_length <= (grid_length - square_length)
        fill_square(square_sample, grid, upper_right_corner, square_length, grid_length)
      end
    end
    square_sample
  end

  def grid_length_finder(length, grid)
    grid_length = Math.sqrt(grid.size/length**2) * length
  end

  def fill_square(square, grid, right_corner, square_length, grid_length)
    start = right_corner
    (square_length).times do
      (0..square_length - 1).each do |offset|
        fill_row(square, start, offset, grid)
      end
      start += grid_length
    end
    square
  end

  def fill_row(square, start, offset, grid)
    square << grid[start + offset]
  end

  def row_multiplier(square)
  end

  def col_multiplier(square)
  end

  def upward_diagonal_multiplier(square)
  end

  def downward_diagonal_multiplier(square)
  end

end

