class ChangeExpectedCloseFormat < ActiveRecord::Migration[6.1]
  def change
    change_column :opportunities, :expected_close, :date
  end
end
