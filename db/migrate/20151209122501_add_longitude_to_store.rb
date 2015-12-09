class AddLongitudeToStore < ActiveRecord::Migration
  def change
    add_column :stores, :longitude, :integer
  end
end
