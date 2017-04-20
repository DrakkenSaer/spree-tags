Spree::Product.class_eval do
  has_many :taggings, as: :taggable
  has_many :tags, -> { distinct }, through: :taggings
end