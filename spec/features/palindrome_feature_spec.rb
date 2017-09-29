require 'rails_helper'

RSpec.feature 'palindromes', type: :feature do
  context 'no palindromes have been added' do
    scenario 'should display a prompt to add a palindrome' do
      visit '/'
      expect(page).to have_content 'No palindromes yet'
      expect(page).to have_link 'Add a palindrome'
    end
  end
end
