class PagesController < ApplicationController

  def welcome
    @header = "This is the WELCOME page"
  end

  def about
    @header = "This is the ABOUT page"
  end

  def contest
    @header = "This is the CONTEST page"
  end

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

end
