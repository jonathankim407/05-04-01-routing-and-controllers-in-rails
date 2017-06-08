class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "This is the WELCOME page"
  end

  def about
    @header = "This is the ABOUT page"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end

  # def kitten
  #   requested_size = params[:size]
  #   @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  # end
  #
  # def kittens
  #   requested_size = params[:size]
  #   @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  # end

  def kitten
    # set_kitten_url
  end

  def kittens
    # set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] != "hello"
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to "/"
    end
  end

end
