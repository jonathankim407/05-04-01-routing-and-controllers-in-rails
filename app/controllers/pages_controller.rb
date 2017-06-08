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

end
