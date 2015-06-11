class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    private

    def current_user_cart
      user_cart = Cart.where(user_id: current_user.id).take
      if user_cart.nil?
        cart = Cart.new
        cart.user_id = current_user.id
      #rescue  ActiveRecord::RecordNotFound  => e
        session[:cart_id] = cart.id
      else
        cart =  Cart.where(user_id: current_user.id).take
      end
      cart
    end

    helper_method :current_user_cart
end
