class PalindromesController < ApplicationController

  def index
    @palindromes = Palindrome.all
    .where({ created_at: (Time.now - 10.minutes)..Time.now })
    .order("created_at DESC")
    .limit(10)
  end

  def new
    @palindrome = Palindrome.new
    render 'new'
  end

  def create
    @palindrome = Palindrome.new(palindrome_params)
    if @palindrome.palindrome?(@palindrome.text)
      @palindrome.save
      flash[:success] = "Saved. Great palindrome!"
      redirect_to '/'
    else
      flash[:error] = "Sorry that's not a palindrome. Try again."
      redirect_to new_palindrome_url
    end
  end

  private

  def palindrome_params
    params.require(:palindrome).permit(:text)
  end
end
