class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone_number
      t.string :email_address
      t.string :details
      t.string :password

      t.timestamps
    end
  end
end
