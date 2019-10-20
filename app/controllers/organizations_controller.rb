class OrganizationsController < ApplicationController

 

  def index
    @organizations = Organization.all
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      redirect_to organizations_path((@organization))
    else 
      redirect_to new_organizations_path(Organization.new)
    end 
  end

  def update
    @organization = Organization.find(params[:id])
    if @organization.update(organization_params)
      redirect_to organizations_path(@organization)
    else
      redirect_to new_organizations_path(Organization.new)
    end
    
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def destroy
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :name, :needs, :donor_id, :volunteer_id)
  end
end
