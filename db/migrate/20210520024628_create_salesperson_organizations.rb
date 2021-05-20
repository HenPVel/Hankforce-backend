class CreateSalespersonOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :salesperson_organizations do |t|
      t.integer :salesperson_id
      t.integer :organization_id

      t.timestamps
    end
  end
end
