class AddPasswordDigestToStores < ActiveRecord::Migration
  def change
    add_column :stores, :password_digest, :string
  end
end
