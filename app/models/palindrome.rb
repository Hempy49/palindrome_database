class Palindrome < ApplicationRecord

  def palindrome?(str)
    format_string(str) == format_string(str).reverse
  end

  def format_string(str)
    str.downcase.gsub(/[^a-z]/i, '')
  end
end
