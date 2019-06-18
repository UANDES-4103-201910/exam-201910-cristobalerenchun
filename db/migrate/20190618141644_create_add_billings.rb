class CreateAddBillings < ActiveRecord::Migration[5.2]
  def change
    create_table :add_billings do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :order, foreign_key: true
      t.integer :phone
      t.string :addline1
      t.string :addline2
      t.string :city
      t.string :country
      t.integer :zipcode

      t.timestamps
    end
  end
end
