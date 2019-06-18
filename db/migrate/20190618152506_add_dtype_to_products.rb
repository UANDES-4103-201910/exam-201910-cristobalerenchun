class AddDtypeToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :dtype, :string
  end
end
