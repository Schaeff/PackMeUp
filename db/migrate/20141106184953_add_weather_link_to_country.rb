class AddWeatherLinkToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :weatherLink, :string
  end
end
