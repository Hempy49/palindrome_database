class PalindromesController < ApplicationController

  def index
    @palindromes = Palindrome.all
  end

  def new
    @palindrome = Palindrome.new
    render 'new'
  end

  def create
    @palindrome = Palindrome.create(palindrome_params)
    redirect_to '/'
  end

  private

  def palindrome_params
    params.require(:palindrome).permit(:text)
  end
end
