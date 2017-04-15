class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def items
    @items_list = Item.all
  end

  def remote_ip
    if request.remote_ip == '127.0.0.1'
      # Hard coded remote address
      '123.45.67.89'
    else
      request.remote_ip
    end
  end

  def get_city(lat, long)
    Geokit::Geocoders::GoogleGeocoder.reverse_geocode "37.791821,-122.394679"

  end
end
