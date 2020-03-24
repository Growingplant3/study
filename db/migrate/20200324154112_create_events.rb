class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :existence
      t.datetime :start_time

      t.timestamps
    end
  end
end
