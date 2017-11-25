class StampController < ApplicationController
  def index
    @stamps = Stamp.order(:image_url).page params[:page]
  end

  def show
    @stamp = Stamp.find(params[:id])
  end
end
