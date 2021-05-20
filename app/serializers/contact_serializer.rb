class ContactSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone_num, :organization_id, :job_title, :email
end
