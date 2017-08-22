class AssociationsController < ApplicationController
  def new

  end

  def create
    # find the logged in User and tie the selected Empire to that User
    @empire = Empire.find_by id: params[:id]
    
  end

  def destroy

  end
end
