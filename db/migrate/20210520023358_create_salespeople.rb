class CreateSalespeople < ActiveRecord::Migration[6.1]
  def change
    create_table :salespeople do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password, default:'abc123'
      t.string :employer
      t.float :annual_sales_goal, default:0
      t.string :why_description, default:"To Make A Living"

      t.timestamps
    end
  end
end
