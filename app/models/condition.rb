class Condition < ActiveRecord::Base
  belongs_to :pet
  has_many :pets
  belongs_to :medication
  has_many :medications
end
