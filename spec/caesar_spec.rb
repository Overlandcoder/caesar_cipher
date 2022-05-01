require './lib/caesar_cipher.rb'

describe CaesarCipher do
  describe "encode" do
    it 'correctly encodes "z" with positive shift' do
      caesar = CaesarCipher.new
      expect(caesar.encode("z", 5)).to eql("e")
    end

    it 'correctly encodes "Z" with positive shift' do
      caesar = CaesarCipher.new
      expect(caesar.encode("Z", 5)).to eql("E")
    end

    it 'correctly encodes "a" with negative shift' do
      caesar = CaesarCipher.new
      expect(caesar.encode("a", -5)).to eql("v")
    end

    it 'correctly encodes "A" with negative shift' do
      caesar = CaesarCipher.new
      expect(caesar.encode("A", -5)).to eql("V")
    end

    it 'correctly encodes multiple words' do
      caesar = CaesarCipher.new
      expect(caesar.encode("What a string", 5)).to eql("Bmfy f xywnsl")
    end

    it 'correctly encodes special characters' do
      caesar = CaesarCipher.new
      expect(caesar.encode("!", 5)).to eql("!")
    end
  end
end