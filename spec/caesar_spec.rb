require './caesarcipher.rb'

describe Caesar do
  describe "#caesar" do
    it "returns a string with each alphabet shifted by the value shift value" do
      cipher = Caesar.new
      expect(cipher.caesar('str', 1)).to eql('tus')
    end

    it "returns a string with only alphabets shifted" do
      cipher = Caesar.new
      expect(cipher.caesar('ana123', 2)).to eql('cpc123')
    end

    it "is case-sensitive" do
      cipher = Caesar.new
      expect(cipher.caesar('AbCdEfG', 5)).to eql('FgHiJkL')
    end

    it "does not change the positions of spaces and punctuation" do
      cipher = Caesar.new
      expect(cipher.caesar("Hello! I am Julius Caesar the 75th, son of my grandfather's son. :)", 7)).to eql("Olssv! P ht Qbspbz Jhlzhy aol 75ao, zvu vm tf nyhukmhaoly'z zvu. :)")
    end

    it "works with negative shifts" do
      cipher = Caesar.new
      expect(cipher.caesar("Olssv! P ht Qbspbz Jhlzhy aol 75ao, zvu vm tf nyhukmhaoly'z zvu. :)", -7)).to eql("Hello! I am Julius Caesar the 75th, son of my grandfather's son. :)")
    end

    it "wraps from a-z and Z-A using a postive shift" do
      cipher = Caesar.new
      expect(cipher.caesar('a-zA-Z', 1)).to eql('b-aB-A')
    end

    it "wraps from a-z and A-Z using a negative shift" do
      cipher = Caesar.new
      expect(cipher.caesar('a-zA-Z', -1)).to eql('z-yZ-Y')
    end
  end
end
