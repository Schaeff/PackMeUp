class USuitcase < ActiveRecord::Base
  belongs_to :user
  belongs_to :country
  has_and_belongs_to_many :items
end
