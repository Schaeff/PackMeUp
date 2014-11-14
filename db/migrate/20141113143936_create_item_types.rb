class CreateItemTypes < ActiveRecord::Migration
  def change
    create_table :item_types do |t|
      t.string :name
      t.integer :parent_id

      t.timestamps
    end
  end
end
