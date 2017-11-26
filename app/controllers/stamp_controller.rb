class StampController < ApplicationController
  include StampHelper
  def index
    @stamps = Stamp.order(:image_url).page params[:page]
  end

  def show
    @stamp = Stamp.find(params[:id])
  end

  def stats
    @chart = LazyHighCharts::HighChart.new('graph') do |f|
      f.title({ text: "Stamps printed per year"})
      # f.xAxis({type: 'datetime' })
      f.series(:data=> stamps_printed_per_year)
      f.chart({defaultSeriesType: "column"})
    end
end
end
