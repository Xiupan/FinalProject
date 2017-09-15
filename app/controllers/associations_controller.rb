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
    $explorationMessage = nil
    $colonizationMessage = nil
    $researchMessage = nil
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
    elsif params[:commit] == 'Explore'
      @empire = Empire.find_by id: params[:id]
      if @empire.money < 150
        $explorationMessage = "Not enough monies. Exploration costs 150."
        redirect_to summary_view_path(@empire.id)
      else
        @unexploredSystemsArray = System.where(:explored => [false]).all
        @randomSystem = @unexploredSystemsArray.sample
        @randomSystem.explored = true
        @randomSystem.empire_id = @empire.id
        @randomSystem.save!
        @empire.money -= 150
        @empire.save!
        $explorationMessage = "Successfully explored #{@randomSystem.name} / System ID: #{@randomSystem.id}."
        redirect_to summary_view_path(@empire.id)
      end
    elsif params[:commit] == 'Colonize'
      @empire = Empire.find_by id: params[:id]
      @systemToColonize = System.find_by id: params[:system][:id]
      if @empire.food < 200
        $colonizationMessage = "Not enough food for your future colonists. Colonizing #{@systemToColonize.name} requires 200 food."
        redirect_to summary_view_path(@empire.id)
      else
        @systemToColonize.colonized = true
        @systemToColonize.empire_id = @empire.id
        @systemToColonize.save!
        @empire.food -= 200
        @empire.save!
        $colonizationMessage = "Successfully colonized #{@systemToColonize.name} / System ID: #{@systemToColonize.id}."
        redirect_to summary_view_path(@empire.id)
      end
    elsif params[:commit] == 'Research'
      @empire = Empire.find_by id: params[:id]
      @techToResearch = Technology.find_by id: params[:technology][:id]
      if @techToResearch.base_time > @empire.science
        $researchMessage = "Unable to research. Not enough science. #{@techToResearch.name} costs #{@techToResearch.base_time} science."
        redirect_to summary_view_path(@empire.id)
      else
        @empire.science -= @techToResearch.base_time
        @empire.save!
        $researchMessage = "Successfully researched #{@techToResearch.name} / Tech ID: #{@techToResearch.id}."
        redirect_to summary_view_path(@empire.id)
      end
    elsif params[:commit] == 'Manage Colony'
      @empire = Empire.find_by id: params[:id]
      @system = System.find_by id: params[:colony][:id]
      redirect_to empire_system_path(@empire.id, @system.id)
    end
  end

  def destroy

  end

  def empire_params
    params.require(:empire).permit(:id, :name)
  end
end
