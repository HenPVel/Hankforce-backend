class SalespersonOrganizationsController < ApplicationController
  before_action :set_salesperson_organization, only: [:show, :update, :destroy]

  # GET /salesperson_organizations
  def index
    @salesperson_organizations = SalespersonOrganization.all

    render json: @salesperson_organizations
  end

  # GET /salesperson_organizations/1
  def show
    render json: @salesperson_organization
  end

  # POST /salesperson_organizations
  def create
    @salesperson_organization = SalespersonOrganization.new(salesperson_organization_params)

    if @salesperson_organization.save
      render json: @salesperson_organization, status: :created, location: @salesperson_organization
    else
      render json: @salesperson_organization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /salesperson_organizations/1
  def update
    if @salesperson_organization.update(salesperson_organization_params)
      render json: @salesperson_organization
    else
      render json: @salesperson_organization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /salesperson_organizations/1
  def destroy
    @salesperson_organization.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salesperson_organization
      @salesperson_organization = SalespersonOrganization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def salesperson_organization_params
      params.require(:salesperson_organization).permit(:salesperson_id, :organization_id)
    end
end
