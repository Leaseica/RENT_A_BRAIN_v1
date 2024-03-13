class BrainsController < ApplicationController
  def index
    @brains = Brain.all
  end

  def show
    id = params[:id]
    @brain = Brain.find(id)
  end

  def new
    @brain = Brain.new
  end

  def create
    @brain = Brain.new(brain_params)
    @brain.user_id = current_user.id
    respond_to do |format|
      if @brain.save!
        format.html { redirect_to brain_path(@brain) }
        format.json
      else
        format.html { render "brains/new", status: :unprocessable_entity }
        format.json
      end
    end
  end

  private

  def brain_params
    params.require(:brain).permit(:title, :specialty, :address, :photo, :description, :wiki_page, :price)
  end

end
