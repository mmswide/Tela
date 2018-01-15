class HomeController < ApplicationController
  def index
    @purchase = Purchase.new
  end
end
