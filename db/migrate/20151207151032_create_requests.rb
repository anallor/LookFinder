class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :product
      t.string :place
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
