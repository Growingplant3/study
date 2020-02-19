class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.datetime :date
      t.integer :classification
      t.integer :money

      t.timestamps
    end
  end
end
