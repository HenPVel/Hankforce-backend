class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_num
      t.integer :organization_id
      t.string :job_title
      t.string :email

      t.timestamps
    end
  end
end
