class CreateOpportunities < ActiveRecord::Migration[6.1]
  def change
    create_table :opportunities do |t|
      t.string :opp_title
      t.integer :organization_id
      t.string :contact_person
      t.float :value
      t.string :stage
      t.datetime :expected_close

      t.timestamps
    end
  end
end
