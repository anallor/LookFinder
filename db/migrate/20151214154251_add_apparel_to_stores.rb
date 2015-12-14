class AddApparelToStores < ActiveRecord::Migration
  def change
    add_column :stores, :apparel, :text
  end
end
