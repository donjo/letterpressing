class WordsController < ApplicationController
  def search
    term = params[:term]
    @words = ShaunFinder.find(WORDS, term)
  end
end
