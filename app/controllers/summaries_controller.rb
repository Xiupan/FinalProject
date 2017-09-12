class SummariesController < ApplicationController
  def index
    @empire = Empire.find_by id: params[:id]
  end
end
