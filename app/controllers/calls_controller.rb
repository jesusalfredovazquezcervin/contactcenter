class CallsController < ApplicationController
  before_action :set_call, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @calls = Call.all
    respond_with(@calls)
  end

  def show
    respond_with(@call)
  end

  def new
    @call = Call.new
    @call.company_id = params[:company_id]
    @call.campaign_id = params[:id]
    @campaign = Campaign.find_by_id params[:id]
    #@company = Company.find_by_id params[:company_id]
  end

  def edit
  end

  def create
    @call = Call.new(call_params)
    @call.save

    ClientMailer.deliver_document(current_user, @call.company.contact.email ,"Catalogo").deliver if params[:button] == "enviar"
    respond_with(@call)
  end

  def update
    @call.update(call_params)
    respond_with(@call)
  end

  def destroy
    @call.destroy
    respond_with(@call)
  end
  private
    def set_call
      @call = Call.find(params[:id])
    end

    def call_params
      params[:call][:user_id] = current_user.id
      params.require(:call).permit(:company_id, :campaign_id, :result, :status, :later, :user_id, :status)
    end
end
