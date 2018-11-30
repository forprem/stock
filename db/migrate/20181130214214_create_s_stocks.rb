class CreateSStocks < ActiveRecord::Migration
  def change
    create_table :s_stocks do |t|
      t.string :ticker
      t.string :name
      t.decimal :last_price

      t.timestamps null: false
    end
  end
end
