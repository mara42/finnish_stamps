class StampController < ApplicationController
  def index
    @stamps = Stamp.all
  end

  def show
  end
end
