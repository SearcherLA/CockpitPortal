class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.integer :DatevId
      t.string :name
      t.string :displayname
      t.integer :solution_architect_id
      t.integer :reseller_id

      t.timestamps
    end
  end
end
