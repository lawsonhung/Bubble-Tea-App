class OrdersController < ApplicationController

  def new
    @order = Order.new
    @bubble_teas = BubbleTea.all
    @customers = Customer.all
  end

  def create
    @order = Order.create(params.require(:order).permit(:name, :bubble_tea_id, :customer_id))
    redirect_to bubble_tea_path(@order.bubble_tea)
  end

end
