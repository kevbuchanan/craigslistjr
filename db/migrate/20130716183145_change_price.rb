class ChangePrice < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.change :price, :float, scale: 2
    end
  end
end
