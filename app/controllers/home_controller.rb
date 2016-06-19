class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    respond_to do |format|
      format.html { redirect_to appviews_calendar_path}
      format.json { head :no_content }
    end
  end
end

