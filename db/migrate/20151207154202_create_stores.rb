class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.string :place
      t.string :postcode
      t.string :address

      t.timestamps null: false
    end
  end
end
