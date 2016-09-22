class Spree::Tag < ActiveRecord::Base
  before_save :downcase_fields

  has_many :identities
  has_many :products, through: :identities
  
  validates :name, presence: true
  
  protected
  
  def downcase_fields
    self.name.downcase!
  end
end