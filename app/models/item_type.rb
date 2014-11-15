class ItemType < ActiveRecord::Base
	acts_as_tree
	has_many :item, :dependent => :destroy
end
