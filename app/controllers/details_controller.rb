class DetailsController < ApplicationController
  before_action :set_detail, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @details = Detail.search(params, current_user)
    @campaign = Campaign.find_by_id params[:id]
    respond_with(@details)
  end

  def show
    respond_with(@detail)
  end

  def new
    @detail = Detail.new
    respond_with(@detail)
  end

  def edit
  end

  def create
    @detail = Detail.new(detail_params)
    @detail.save
    respond_with(@detail)
  end

  def update
    @detail.update(detail_params)
    respond_with(@detail)
  end

  def destroy
    @detail.destroy
    respond_to do |format|
        format.html { redirect_to({ action: 'index', id: @detail.campaign_id }, notice: "El registro ha sido eliminado exitosamente") }
    end
  end
  def send_catalog
    detail=Detail.find_by_id(params[:id])
    respond_to do |format|
      ClientMailer.deliver_document(current_user, detail.company.contact.email  ,"Catalogo").deliver
      format.html { redirect_to({action: "index", id: detail.campaign.id}, notice: "Se ha enviado el catalogo exitosamente") }
    end

  end
  private
    def set_detail
      @detail = Detail.find(params[:id])
    end

    def detail_params
      params.require(:detail).permit(:company_id, :campaign_id, :user_id)
    end
end
