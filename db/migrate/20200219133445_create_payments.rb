class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.integer :input_date
      t.integer :category
      t.integer :money

      t.timestamps
    end
  end
end
