class CreateCustomerContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :function
      t.integer :title_id
      t.integer :customer_id
      t.string :phone
      t.string :email
      t.date :birthday

      t.timestamps
    end
  end
end
