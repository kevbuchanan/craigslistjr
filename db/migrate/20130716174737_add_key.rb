class AddKey < ActiveRecord::Migration
  def change
    add_column :posts, :key, :string
    add_column :posts, :email, :string
    add_column :posts, :price, :float
  end
end
