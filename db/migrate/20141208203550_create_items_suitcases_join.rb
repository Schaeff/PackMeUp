class CreateItemsSuitcasesJoin < ActiveRecord::Migration
  def change
    create_table :items_suitcases, :id => false do |t|
    	t.column 'item_id', :integer
    	t.column 'suitcase_id', :integer
    end
  end
end
