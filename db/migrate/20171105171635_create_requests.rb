class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :client_first
      t.string :client_last
      t.float :cost
      t.float :costVAT
      t.string :description
      t.integer :number_employee
      t.string :status
      t.string :client_mail

      t.timestamps
    end
  end
end
