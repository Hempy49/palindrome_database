require 'rails_helper'

RSpec.feature 'palindromes', type: :feature do
  context 'no palindromes have been added' do
    scenario 'should display a prompt to add a palindrome' do
      visit '/'
      expect(page).to have_content 'No palindromes added recently'
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

  context 'checking palindromes' do
    scenario 'accepts and saves correct palindrome' do
      create_palindrome
      expect(page).to have_content "Dammit I'm Mad"
      expect(page).to have_content "Saved. Great palindrome!"
      expect(current_path).to eq '/'
    end

    scenario 'rejects input which is not a palindrome' do
      create_sentence
      expect(page).to have_content "Sorry that's not a palindrome. Try again."
      expect(page).to_not have_content "Not a palindrome"
      expect(current_path).to eq '/palindromes/new'
    end
  end
end
