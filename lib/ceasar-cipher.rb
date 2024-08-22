def caesar_cipher(string, shift)
  # convert to list of character values
  original_char_values = string.split('').map { |c| c.ord }
  # convert shift to a corresponding value between 1-26
  n = shift % 26
  # if a-z or A-Z -> shift
  new_char_values = original_char_values.map do |c|
    if c.between?('a'.ord, 'z'.ord - n) || c.between?('A'.ord, 'Z'.ord - n)
      c + n
    elsif c.between?('z'.ord - n, 'z'.ord) || c.between?('Z'.ord - n, 'Z'.ord)
      c + n - 26
    else
      c
    end
  end
  new_char_values.map { |n| n.chr }.join('')
end
