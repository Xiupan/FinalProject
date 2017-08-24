class AssociationsController < ApplicationController
  def new

  end

  def updateEmpireToUser
    # find the logged in User and tie the selected Empire to that User
    @empire = Empire.find_by id: params[:name][:id]
    if @empire
      @empire.user_id = session[:user_id]
      @empire.save!
      redirect_to summary_view_path(@empire.id)
    else
      @error_message = 'Something went wrong. Could not find any Empires to list.'
      render root_path
    end
  end

  def destroy

  end

  def empire_params
    params.require(:empire).permit(:id, :name)
  end
end
