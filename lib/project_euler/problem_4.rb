class ProblemFour

  def greatest_two_digit_palindrome
    max_palindrome = 0

    (10..99).each do |n1|
      (10..99).each do |n2|
        current_product = n1 * n2
        if number_is_palindrome?(current_product)
          max_palindrome = current_product if current_product > max_palindrome
        end
      end
    end
    max_palindrome
  end

  def greatest_three_digit_palindrome
    max_palindrome = 0

    (100..999).each do |n1|
      (100..999).each do |n2|
        current_product = n1 * n2
        if number_is_palindrome?(current_product)
          max_palindrome = current_product if current_product > max_palindrome
        end

      end
    end
    max_palindrome
  end

  def number_is_palindrome?(n)
    n_as_chars = separate_number_to_characters(n)
    l = n_as_chars.length
    if l.odd?
      max_left_side = (l - 1)/2
      (1..max_left_side).each do |lch|
        return false if n_as_chars[lch - 1] != n_as_chars[l - lch]
      end
    elsif l.even?
      max_left_side = l/2
      (1..max_left_side).each do |lch|
        return false if n_as_chars[lch - 1] != n_as_chars[l - lch]
      end
    else
      p "Error in palindrome detection"
    end

    return true

  end

  def separate_number_to_characters(n)
    n_as_ch = []
    n.to_s.chars { |ch| n_as_ch << ch }
    n_as_ch
  end

end

