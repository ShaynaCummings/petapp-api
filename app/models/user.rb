class User < ActiveRecord::Base
  has_secure_password
  before_create :generate_token

  has_many :pets

 def generate_token
  begin
      self.token = SecureRandom.hex
   end while self.class.exists?(token: token)
 end

end
