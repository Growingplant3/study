class AddcolumnUsers < ActiveRecord::Migration[6.0]
  def change
    add_column:users, :sex, :integer
    add_column:users, :age, :integer
    add_column:users, :password, :string
  end
end