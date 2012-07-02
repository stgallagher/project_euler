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

end

