class Item < ActiveRecord::Base
	belongs_to :item_type
	has_and_belongs_to_many :suitcases
end
