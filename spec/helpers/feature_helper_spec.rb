def create_palindrome
  visit '/'
  click_link 'Add a palindrome'
  fill_in 'palindrome_text', with: "Dammit I'm Mad"
  click_button 'Create Palindrome'
end

def create_palindrome_2
  visit '/'
  click_link 'Add a palindrome'
  fill_in 'palindrome_text', with: 'Eva, Can I Stab Bats In A Cave?'
  click_button 'Create Palindrome'
end

def create_sentence
  visit '/palindromes/new'
  fill_in 'palindrome_text', with: "Not a palindrome"
  click_button 'Create Palindrome'
end 
