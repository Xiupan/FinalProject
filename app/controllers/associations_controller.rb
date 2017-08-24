class AssociationsController < ApplicationController
  def new

  end

  def updateEmpireToUser
    # find the logged in User and tie the selected Empire to that User
    @empire = Empire.find_by id: params[:name][:id]
    @empire.user_id = session[:user_id]
    @empire.save!
  end

  def destroy

  end

  def empire_params
    params.require(:empire).permit(:id, :name)
  end
end
