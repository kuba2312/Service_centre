class AddIndexToEmployeesNickname < ActiveRecord::Migration[5.1]
  def change
    add_index :employees, :nickname, unique: true
  end
end
