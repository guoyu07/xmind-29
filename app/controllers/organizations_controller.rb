class OrganizationsController < ApplicationController

  before_action :find_organization, only: [:show, :edit, :update, :destroy]

  def index
    @organizations = Organization.all
  end

  def show
  end

  def hello
    @organization = Organization.find_by_sigil params[:sigil]
    if @organization
      @body = @organization.hello_markdown
    else
      flash[:error] = 'Organization not found.'
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    if @organization.update_attributes organization_params
      flash[:notice] = "Organization updated successfully"
      redirect_to @organization
    else
      flash[:error] = "Error updating Organization"
      render :edit
    end
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new organization_params

    if @organization.save
      flash[:notice] = "New Organization Create"
      redirect_to @organization
    else
      flash[:error] = "Error saving new Organization"
      render :new
    end
  end

  def destroy
    if @organization.destroy
      flash[:notice] = "Organization Removed"
      redirect_to organizations_path
    else
      flash[:error] = "Error Removing Organization"
      render :show
    end
  end

  private

  def find_organization
    @organization = Organization.find params[:id]
  end

  def organization_params
    params.require(:organization).permit(:name, :sigil, :website)
  end

end
