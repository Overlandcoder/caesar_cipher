class CaesarCipher
  def encode(string, shift)
    message = ''
    string.each_char do |char|
      if char.ord.between?(97, 122)
        if (char.ord + shift) > 122
          message += (char.ord - 26 + shift).chr
        elsif (char.ord + shift) < 97
          message += (char.ord + 26 + shift).chr
        else
          message += (char.ord + shift).chr
        end
      elsif char.ord.between?(65, 90)
        if (char.ord + shift) > 90
          message += (char.ord - 26 + shift).chr
        elsif (char.ord + shift) < 65
          message += (char.ord + 26 + shift).chr
        else
          message += (char.ord + shift).chr
        end
      else
        message += char
      end
    end
    message
  end
end

a = CaesarCipher.new
puts a.encode("What a string!", -5)
