class LocationController < ApplicationController
  def index
    @client_ip = remote_ip()
  end
end