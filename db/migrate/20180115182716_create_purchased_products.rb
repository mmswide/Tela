class CreatePurchasedProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :purchased_products do |t|
      t.belongs_to :product, foreign_key: true
      t.belongs_to :purchase, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
