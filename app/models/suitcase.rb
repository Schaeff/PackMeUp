class Suitcase < ActiveRecord::Base
	has_and_belongs_to_many :items
	belongs_to :country
end
