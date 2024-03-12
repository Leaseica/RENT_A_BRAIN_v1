class BrainsController < ApplicationController

  def new
    @brain = Brain.new
  end

  def create
    @brain = Brain.new(brain_params)
    if @brain.save
      redirect_to brains_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def brain_params
    params.require(:brain).permit(:title, :specialty, :address, :photo, :description, :wiki_page, :price)
  end

end
