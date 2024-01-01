def ceaser_chiper(message, shift)
  encrypted_message = ""
  lowercase_alphabet = ('a'..'z').to_a
  upcase_alphabet = ('A'..'Z').to_a
  message.each_char do |char|
    if lowercase_alphabet.include?(char)
      encrypted_message += encrypted_alphabet_index(lowercase_alphabet, char, shift)
    elsif upcase_alphabet.include?(char)
      encrypted_message += encrypted_alphabet_index(upcase_alphabet, char, shift)
    else
      encrypted_message += char
    end
  end
  encrypted_message
end


def encrypted_alphabet_index(alphabet_array, char, shift)
  shift_index = alphabet_array.index(char) + shift
  shift_index = shift_index > 25 ? shift_index - 26 : shift_index
  alphabet_array[shift_index]
end


 
 print ceaser_chiper('danphe-software%labs', 3)
