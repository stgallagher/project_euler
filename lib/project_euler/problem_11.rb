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
    max = 0
    sample_max = 0
    col_level = 0
    first_row = true
    square_sample = []
    grid_length = grid_length_finder(square_length, grid)
    grid.each_index do |idx|
      if index_determiner(idx, square_length, grid_length, grid)
        square_sample = fill_square(square_sample, grid, idx, square_length, grid_length)
        sample_max = parcel_max_product(square_sample, square_length)
        max = sample_max if sample_max > max
        square_sample.clear
      end
    end
    max
  end

  def index_determiner(idx, square_length, grid_length, grid)
    relative_idx = idx % grid_length
    row_limit = grid_length - square_length
    column_limit = grid.size - (((square_length - 1) * grid_length) + square_length)
    if(relative_idx <= row_limit && idx < column_limit)
      return idx
    else
      return nil
    end
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

  def row_max_multiplier(square, square_length)
    max = 0
    square.each_slice(square_length) do |row|
      row_max = row.inject { |product, factor| product *= factor }
      max = row_max if row_max > max
    end
    max
  end

  def col_max_multiplier(square, square_length)
    max = 0
    col = []
    (square_length).times do
      (0..square_length - 1).each do |offset|
        (0..square_length - 1).each do |col_level|
          col << square[offset + (col_level * square_length)]
          col_max = col.inject { |product, factor| product *= factor }
          max = col_max if col_max > max
        end
        col.clear
      end
    end
    max
  end

  def upward_diagonal_max_multiplier(square, square_length)
    diag_max = 0
    diag = []
    (0..square_length - 1).each do |offset|
      diag << square[((square_length - 1) - offset) + (offset * square_length)]
      diag_max = diag.inject { |product, factor| product *= factor }
    end
    diag_max
  end

  def downward_diagonal_max_multiplier(square, square_length)
    diag_max = 0
    diag = []
    (0..square_length - 1).each do |offset|
      diag << square[ offset + (offset * square_length)]
      diag_max = diag.inject { |product, factor| product *= factor }
    end
    diag_max
  end

  def parcel_max_product(square,square_length)
    max = 0
    max = row_max_multiplier(square,square_length) if row_max_multiplier(square,square_length) > max
    max = col_max_multiplier(square,square_length) if col_max_multiplier(square,square_length) > max
    max = upward_diagonal_max_multiplier(square,square_length) if upward_diagonal_max_multiplier(square,square_length) > max
    max = downward_diagonal_max_multiplier(square,square_length) if downward_diagonal_max_multiplier(square,square_length) > max
    max
  end

  def problem_11_solver(filename, square_length)
    grid = format_contents(build_array_from_file(filename))
    square_parceler(square_length, grid)
  end

end

