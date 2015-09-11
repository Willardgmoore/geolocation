class User < ActiveRecord::Base
  geocoded_by :user_ip

  private

  def user_ip
  	@result = request.location
  end

end
