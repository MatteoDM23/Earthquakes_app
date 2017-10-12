class ChartController < ApplicationController
  def time
    @items = Earthquake.order('time ASC')
  end

  def feed
  end
end
