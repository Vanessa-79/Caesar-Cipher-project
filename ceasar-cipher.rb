=begin

Assignment
From Wikipedia:
In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

Implement a Caesar cipher that takes in a string and the shift factor and then outputs the modified string using a right shift:

  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"

=end


def caesar_cipher(text, shift)
  result = ""

  text.each_char do |char|
    if char.match(/[A-Z]/)  # Check if it's uppercase
      base = 'A'.ord

      # Convert to number, apply shift, wrap around, and convert back to char
      shifted = ((char.ord - base + shift) % 26 + base).chr
      result += shifted
      
    elsif char.match(/[a-z]/)  # Check if it's lowercase
      base = 'a'.ord
      shifted = ((char.ord - base + shift) % 26 + base).chr
      result += shifted
    else
      # If it's not a letter (e.g., space or punctuation), leave it as is
      result += char
    end
  end

  result
end

puts caesar_cipher("What a string!", 5)

