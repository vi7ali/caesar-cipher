require "./lib/caesar"

RSpec.describe "Caesar" do
  describe "#caesar_cipher" do
    
    it "works with one letter" do
      expect(caesar_cipher("a", 1)).to eql("b")
    end

    it "works with one word" do
      expect(caesar_cipher("hello", 1)).to eql("ifmmp")
    end

    it "works with several words" do
      expect(caesar_cipher("hello world", 1)).to eql("ifmmp xpsme")
    end

    it "works with downcase and upcase letters" do
      expect(caesar_cipher("Hello World", 1)).to eql("Ifmmp Xpsme")
    end

    it "works with special characters" do
      expect(caesar_cipher("Hello World!", 1)).to eql("Ifmmp Xpsme!")
    end

    it "wraps at the end of the alphabet" do
      expect(caesar_cipher("Hello World Z!", 1)).to eql("Ifmmp Xpsme A!")
    end
  end
end