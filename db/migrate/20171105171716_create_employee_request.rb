class CreateEmployeeRequest < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_requests, id: false do |t|
      t.belongs_to :employee, index: true
      t.belongs_to :request, index: true
    end
  end
end
