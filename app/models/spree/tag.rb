class Spree::Tag < ActiveRecord::Base
  before_save :downcase_fields

  has_many :taggings
  has_many :products, -> { distinct }, through: :taggings, source: :taggable, source_type: 'Spree::Product'
  
  validates :name, :color, presence: true
  validates :color, hexadecimal: true
  
  protected
  
  def downcase_fields
    self.name.downcase!
  end
end