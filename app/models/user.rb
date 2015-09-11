class User < ActiveRecord::Base
  # include Geocoder::Model::Mongoid
geocoded_by :ip_address,
  :latitude => :lat, :longitude => :lon
after_validation :geocode



# geocoded_by :postal_code,
#   :latitude => :lat, :longitude => :lon
# after_validation :geocode

# http://stackoverflow.com/questions/6770784/how-to-create-popup-window-to-create-new-record-in-rails-3


  def user_ip
  	request.location
  end

end

 	

