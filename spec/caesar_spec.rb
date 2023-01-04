require './caesar.rb'

describe 'Caesar Cipher program' do
  describe 'caesar_cipher method' do
    it "returns 'ifmmp xpsme' for 'hello world', amount 1" do
      expect(calculate_cipher('hello world', 1)).to eql('ifmmp xpsme')
    end

    it "returns nil if an empty string is provided" do
      expect(calculate_cipher('', 1)).to eql(nil)
    end

    it "returns nil if any data type that isn't a String is supplied" do
      expect(calculate_cipher([], 1)).to eql(nil)
      expect(calculate_cipher(574, 1)).to eql(nil)
    end

    it "returns 'olssv dvysk' for 'hello world', amount 7" do
      expect(calculate_cipher('hello world', 7)).to eql('olssv dvysk')
    end
  end
end