require 'rails_helper'

RSpec.feature 'palindrome list', type: :feature do
  context 'lists palindromes on index page' do
    scenario 'should only display 10 palindromes' do
      create_palindrome
      10.times { create_palindrome_2 }
      expect(page).to_not have_content "Dammit I'm Mad"
    end

    scenario 'should only dsplay palindromes entered in last 10mins' do
      create_palindrome
      Timecop.travel(Time.now + 10.minutes)
      visit '/'
      expect(page).to_not have_content "Dammit I'm Mad"
    end
  end
end
