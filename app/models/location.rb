class Location < ActiveRecord::Base
  acts_as_mappable
  def index
  	@object.ip_address = request.remote_ip 
  end
end