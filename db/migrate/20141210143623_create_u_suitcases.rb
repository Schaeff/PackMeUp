class CreateUSuitcases < ActiveRecord::Migration
  def change
    create_table :u_suitcases do |t|
      t.belongs_to :user, index: true
      t.belongs_to :country, index: true
      t.string :weather

      t.timestamps
    end
  end
end
