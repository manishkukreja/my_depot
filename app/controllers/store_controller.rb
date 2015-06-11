class StoreController < ApplicationController
  def index
  		@product = Product.all
  end

  
	  def clear_session
	  	session[:cart_id]=nil
	  end
end
