class PurchasesController < ApplicationController
  before_action :authenticate_user!
  def new
    @purchase = Purchase.new
  end

  def create
    @state = true
    @purchase = Purchase.create
    params[:products].each do |product_item|
      purchased_product = @purchase.purchased_products.new(purchase_product_params(product_item))
      @state = false unless purchased_product.save
    end

    respond_to do |format|
      format.html { redirect_to :root, notice: 'Purchased successfully!' }
      format.json { render json: @resource }
      format.js
    end
  end

  private
  def purchase_product_params product_item
    {
      user_id: current_user.id,
      quantity: product_item[:quantity],
      product_id: product_item[:id]
    }
  end
end
