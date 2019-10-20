class VolunteersController < ApplicationController
  def index
    @volunteers = Volunteer.all
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
      redirect_to volunteers_path
    else 
      redirect_to new_volunteer_path(Volunteer.new)
    end 
  end

  def update
    @volunteer = Volunteer.find(params[:id])
    if @volunteer.update(volunteer_params)
      redirect_to volunteers_path
    else
      redirect_to new_volunteer_path(Volunteer.new)
    end
    
  end

  def edit
    @volunteer = Volunteer.find(params[:id])
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end

  def destroy
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:name, :harvest, :drive, :organization_id)
  end
end
