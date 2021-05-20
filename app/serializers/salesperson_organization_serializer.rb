class SalespersonOrganizationSerializer < ActiveModel::Serializer
  attributes :id, :salesperson_id, :organization_id
end
