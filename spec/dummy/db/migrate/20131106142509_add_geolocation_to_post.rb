class AddGeolocationToPost < ActiveRecord::Migration
  def change
    add_column :posts, :longitude, :string
    add_column :posts, :latitude, :string
  end
end
