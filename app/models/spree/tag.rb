class Spree::Tag < ActiveRecord::Base
  has_many :identities
  has_many :product, through: :identities
  
  validates :name, :description, presence: true
end