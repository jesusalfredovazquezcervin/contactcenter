class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @companies = Company.all
    respond_with(@companies)
  end

  def show
    respond_with(@company)
  end

  def new
    @company = Company.new
    respond_with(@company)
  end

  def edit
  end

  def create
    @company = Company.new(company_params)
    @company.save
    respond_with(@company)
  end

  def update
    @company.update(company_params)
    respond_with(@company)
  end

  def destroy
    @company.destroy
    respond_with(@company)
  end
  def list
    @companies = Company.all
    @campaign = Campaign.find_by_id params[:id]
    respond_with(@companies)
  end
  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:tradeName, :businessName, :rfc, :employees, :comercialBusiness, :sector, :schedule_id, :contact_id, :address_id, :origin)
    end
end
