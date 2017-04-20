class Spree::Tagging < ActiveRecord::Base
  belongs_to :tag, class_name: 'Spree::Tag'
  belongs_to :taggable, polymorphic: true
end
