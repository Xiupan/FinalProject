class HomeController < ApplicationController
  def index
    @empires = Empire.all
  end
end
