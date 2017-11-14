class ApplicationController < ActionController::Base
  before_action :authorize
  
  protect_from_forgery with: :exception
  
  def current_cart
  Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart=Cart.create
    session[:card_id]=card.id
    cart
  end
  
  helper_method :current_cart
  
  protected
  
  def authorize
    unless User.find_by(id: session[:user_id])
    redirect_to login_url, notice: "Please log in"
    end
  end
end
