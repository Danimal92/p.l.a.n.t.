class DonorsController < ApplicationController

  

  def index
    @donors = Donor.all
  end

  def new
    @donor = Donor.new
  end

  def create
    @donor = Donor.new(donor_params)
    if @donor.save
      redirect_to donors_path(@donor)
    else 
      redirect_to new_donor_path
    end 
  end

  def update
    @donor = Donor.find(params[:id])
    if @donor.update(donor_params).save
      redirect_to donors_path(@donor)
    else
      redirect_to new_donor_path(Donor.new)
    end
    
  end

  def edit
    @donor = Donor.find(params[:id])
  end

  def show
    @donor = Donor.find(params[:id])
  end

  def destroy
  end

  private

  def donor_params
    params.require(:donor).permit(:name, :help, :active, :crops, :location, :harvest_time, :harvest, :organization_id)
  end
end
