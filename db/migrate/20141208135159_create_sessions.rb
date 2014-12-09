class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.belongs_to :user, index: true
      t.string :status

      t.timestamps
    end
  end
end
