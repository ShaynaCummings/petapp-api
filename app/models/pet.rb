class Pet < ActiveRecord::Base
  belongs_to :user
  has_many :conditions
  has_many :medications, through: :conditions
  belongs_to :medication
  has_many :veterinarians, through: :appointments
  belongs_to :veterinarian
  has_many :costs
  has_many :supplies
end
