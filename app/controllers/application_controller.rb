class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def items
    @items_list = Item.all
  end
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end
end
