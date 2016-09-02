class ApplicationController < ActionController::Base

  private

  def current_order
    @current_order ||= begin
      if has_order?
        @current_order
      else
        order = Shoppe::Order.create(:ip_address => request.ip)
        session[:order_id] = order.id
        order
      end
    end
  end

  def has_order?
    !!(
      session[:order_id] &&
      @current_order = Shoppe::Order.includes(:order_items => :ordered_item).find_by_id(session[:order_id])
    )
  end

  helper_method :current_order, :has_order?
  def buy
    @product = Shoppe::Product.root.find_by_permalink!(params[:permalink])
    current_order.order_items.add_item(@product, 1)
    redirect_to product_path(@product.permalink), :notice => "Product has been added successfuly!"
  end
  
end