class Spree::Tag < ActiveRecord::Base
  has_many :identities
  has_many :products, through: :identities
  
  validates :name, presence: true
end