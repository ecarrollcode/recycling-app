class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def items
    @items_list = Item.all
  end
end
