class OrganizationsController < ApplicationController
  before_action :find_organization, only: [:show, :edit, :update, :destroy]

  def index
    @organizations = Organization.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def find_organization
    @organization = Organization.find params[:id]
  end

end
