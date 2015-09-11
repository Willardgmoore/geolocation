class User < ActiveRecord::Base
  # include Geocoder::Model::Mongoid
  geocoded_by :user_ip

  after_validation :geocode


  def user_ip
  	# request.location
  end

end
