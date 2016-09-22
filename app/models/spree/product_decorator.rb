Spree::Product.class_eval do
  has_many :identities
  has_many :tags, through: :identities
end