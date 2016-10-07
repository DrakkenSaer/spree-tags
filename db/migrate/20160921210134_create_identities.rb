class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.belongs_to :tag, index: true, foreign_key: true
      t.belongs_to :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
