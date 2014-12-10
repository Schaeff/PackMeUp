class CreateItemsUSuitcasesJoin < ActiveRecord::Migration
  def change
    create_table :items_u_suitcases_joins, :id => false do |t|
    	t.column 'item_id', :integer
    	t.column 'u_suitcase_id', :integer
    end
  end
end
