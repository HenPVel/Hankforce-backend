class OpportunitySerializer < ActiveModel::Serializer
  attributes :id, :opp_title, :organization_id, :contact_person, :value, :stage, :expected_close, :activities
end
