class Medication < ActiveRecord::Base
  has_many :pets, through: :conditions
  belongs_to :pet
end
