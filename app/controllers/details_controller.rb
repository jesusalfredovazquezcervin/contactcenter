class DetailsController < ApplicationController
  before_action :set_detail, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @details = Detail.all
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
    respond_with(@detail)
  end

  private
    def set_detail
      @detail = Detail.find(params[:id])
    end

    def detail_params
      params.require(:detail).permit(:company_id, :campaign_id, :user_id)
    end
end
