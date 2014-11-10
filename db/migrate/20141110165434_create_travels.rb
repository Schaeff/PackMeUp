class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.references :user, index: true
      t.references :country, index: true

      t.timestamps
    end
  end
end
