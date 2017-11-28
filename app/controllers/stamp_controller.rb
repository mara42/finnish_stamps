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
      f.series(name: "Amount printed", :data=> stamps_printed_per_year)
      f.chart({defaultSeriesType: "column"})
      f.plotOptions({series: {pointPadding: 0, groupPadding: 0.1}})
    end
end
end
