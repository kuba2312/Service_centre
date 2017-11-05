class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :title
      t.references :employee, foreign_key: true
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
