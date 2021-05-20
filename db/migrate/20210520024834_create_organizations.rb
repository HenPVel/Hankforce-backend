class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.string :organization_name
      t.integer :employee_count
      t.string :industry
      t.string :headquarter_address
      t.string :organization_address

      t.timestamps
    end
  end
end
