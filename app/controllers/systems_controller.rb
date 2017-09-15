class SystemsController < ApplicationController
  def show
    @empire = Empire.find_by id: params[:empire_id]
    @system = System.find_by id: params[:id]
  end
end
