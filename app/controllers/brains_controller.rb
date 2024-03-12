class BrainsController < ApplicationController

  def show
    id = params[:id]
    @brain = Brain.find(params[:id])
  end

  def edit
    @brain = Brain.find(params[:id])
  end

  def update
    @brain = Brain.find(params[:id])
    @brain.update(params-brain)
    redirect_to brain_path(@brain)
  end



end
