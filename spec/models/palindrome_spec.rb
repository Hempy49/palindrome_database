require 'rails_helper'

RSpec.describe Palindrome, type: :model do

  it { is_expected.to be }

  describe Palindrome.new(text: "Dammit I'm Mad") do
    it { is_expected.to have_attributes(:text => "Dammit I'm Mad") }
  end

  describe '#palindrome?' do
    it 'returns true if string is a palindrome' do
      pal = Palindrome.new(text: "Dammit I'm Mad")
      not_pal = Palindrome.new(text: "I'm not a palindrome")
      expect(pal.palindrome?(pal.text)).to be true
      expect(not_pal.palindrome?(not_pal.text)).to be false
    end
  end

  describe '#format_string' do
    it 'makes input string downcase and removes spaces/ punctuation' do
      pal = Palindrome.new(text: "Dammit I'm Mad")
      expect(pal.format_string(pal.text)).to eq "dammitimmad"
    end
  end
end
