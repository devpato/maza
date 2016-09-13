class ProductsController < ApplicationController

  def index
    @products = Shoppe::Product.root.ordered.includes(:product_categories, :variants)
    @products = @products.group_by(&:product_category)
  end
  def buy
	  @product = Shoppe::Product.root.find_by_permalink!(params[:permalink])
	  current_order.order_items.add_item(@product, 1)
	  redirect_to product_path(@product.permalink), :notice => "El producto se agrego a tu carrito de compras"
  end
  def show
    @product = Shoppe::Product.root.find_by_permalink(params[:permalink])
  end
  def checkout
	  @order = Shoppe::Order.find(current_order.id)
	  if request.patch?
	    if @order.proceed_to_confirm(params[:order].permit(:first_name, :last_name, :billing_address1, :billing_address2, :billing_address3, :billing_address4, :billing_country_id, :billing_postcode, :email_address, :phone_number))
	      redirect_to checkout_payment_path
	    end
	  end
	end

end