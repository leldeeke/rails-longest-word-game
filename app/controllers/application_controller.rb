class ApplicationController < ActionController::Base

  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

end
