require 'rails_helper'

RSpec.feature 'palindromes', type: :feature do
  context 'no palindromes have been added' do
    scenario 'should display a prompt to add a palindrome' do
      visit '/'
      expect(page).to have_content 'No palindromes yet'
      expect(page).to have_link 'Add a palindrome'
    end
  end

  context 'palindrome has been added' do
    before do
      Palindrome.create(text: "Dammit I'm Mad")
    end

    scenario 'displays palindromes' do
      visit '/'
      expect(page).to have_content("Dammit I'm Mad")
    end
  end
end