class Spree::Identity < ActiveRecord::Base
  belongs_to :tag
  belongs_to :product, touch: true
end