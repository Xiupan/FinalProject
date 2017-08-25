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

  def updateEmpire
    if params[:commit] == 'Add 100 Money'
      @empire = Empire.find_by id: params[:id]
      @empire.money += 100
      @empire.save!
      redirect_to summary_view_path(@empire.id)
    elsif params[:commit] == 'Add 100 Food'
      @empire = Empire.find_by id: params[:id]
      @empire.food += 100
      @empire.save!
      redirect_to summary_view_path(@empire.id)
    elsif params[:commit] == 'Add 100 Science'
      @empire = Empire.find_by id: params[:id]
      @empire.science += 100
      @empire.save!
      redirect_to summary_view_path(@empire.id)
    end
  end

  def destroy

  end

  def empire_params
    params.require(:empire).permit(:id, :name)
  end
end
