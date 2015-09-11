class User < ActiveRecord::Base
  # include Geocoder::Model::Mongoid
geocoded_by :ip_address,
  :latitude => :lat, :longitude => :lon
after_validation :geocode



  def user_ip
  	request.location
  end

end


