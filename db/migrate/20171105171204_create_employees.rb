class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :nickname
      t.string :first_name
      t.string :last_name
      t.string :function

      t.timestamps
    end
  end
end
