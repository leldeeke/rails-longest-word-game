require "open-uri"
require 'byebug'

class GamesController < ApplicationController
  VOWELS = %w(A E I O U Y)
  def new
    @letters = Array.new(5) { VOWELS.sample }
    @letters += Array.new(5) { (('A'..'Z').to_a - VOWELS).sample }
    @letters.shuffle!
  end

  def english_word?
    @word = params[:word]
    response = open("https://wagon-dictionary.herokuapp.com/#{@word}")
    json = JSON.parse(response.read)
    return json['found']
  end

  def score
    if english_word? == true
      @games_response = "Well done, your word exists!"
    else
      @games_response = "Your word does not exist!"
    end
  end
end

