class AddOpportunityIdColumnToActivities < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :opportunity_id, :integer
  end
end
