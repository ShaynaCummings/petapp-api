class Veterinarian < ActiveRecord::Base
  has_many :pets, through: :appointments
  belongs_to :pet

end
