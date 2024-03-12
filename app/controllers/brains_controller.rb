class BrainsController < ApplicationController

  def show
    id = params[:id]
    @brain = Brain.find(params[:id])
  end


end
