class CreateTags < ActiveRecord::Migration
  def change
    create_table :spree_tags do |t|
      t.string :name
      t.string :description
      t.string :color
      t.boolean :display, default: false

      t.timestamps null: false
    end
  end
end
