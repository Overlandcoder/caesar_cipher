def caesar_cipher(string, shift)
  result = ''
  string.each_char do |char|
    if char.ord.between?(97, 122)
      if (char.ord + shift) > 122
        result += (char.ord - 26 + shift).chr
      else
        result += (char.ord + shift).chr
      end
    elsif char.ord.between?(65, 90)
      if (char.ord + shift) > 90
        result += (char.ord - 26 + shift).chr
      else
        result += (char.ord + shift).chr
      end
    else
      result += char
    end
  end
  p result
end

caesar_cipher("What a string!", 5)
