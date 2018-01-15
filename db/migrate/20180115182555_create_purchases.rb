class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.boolean :paid, default: false
      t.timestamps
    end
  end
end
