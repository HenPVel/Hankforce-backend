class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :organization_name, :employee_count, :industry, :headquarter_address, :organization_address
end
