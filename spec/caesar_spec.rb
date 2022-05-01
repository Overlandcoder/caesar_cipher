require './lib/caesar_cipher.rb'

describe CaesarCipher do
  describe "encode" do
    caesar = CaesarCipher.new

    it 'correctly encodes "z" with positive shift' do
      expect(caesar.encode("z", 5)).to eql("e")
    end

    it 'correctly encodes "Z" with positive shift' do
      expect(caesar.encode("Z", 5)).to eql("E")
    end

    it 'correctly encodes "a" with negative shift' do
      expect(caesar.encode("a", -5)).to eql("v")
    end

    it 'correctly encodes "A" with negative shift' do
      expect(caesar.encode("A", -5)).to eql("V")
    end

    it 'correctly encodes multiple words' do
      expect(caesar.encode("What a string", 5)).to eql("Bmfy f xywnsl")
    end

    it 'correctly encodes special characters' do
      expect(caesar.encode("!", 5)).to eql("!")
    end

    it 'correctly encodes large positive shift' do
      expect(caesar.encode("Aa", 20)).to eql("Uu")
    end

    it 'correctly encodes large negative shift' do
      expect(caesar.encode("Zz", -20)).to eql("Ff")
    end
  end
end