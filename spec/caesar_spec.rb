require './lib/caesar_cipher.rb'

describe CaesarCipher do
  describe "encode" do
    it 'correctly encodes "a" with positive shift' do
      caesar = CaesarCipher.new
      expect(caesar.encode("a", 5)).to eql("f")
    end

    it 'correctly encodes "A" with positive shift' do
      caesar = CaesarCipher.new
      expect(caesar.encode("A", 5)).to eql("F")
    end

    it 'correctly encodes "z" with positive shift' do
      caesar = CaesarCipher.new
      expect(caesar.encode("z", 5)).to eql("e")
    end

    it 'correctly encodes "Z" with positive shift' do
      caesar = CaesarCipher.new
      expect(caesar.encode("Z", 5)).to eql("E")
    end
  end
end