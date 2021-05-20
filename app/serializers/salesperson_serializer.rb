class SalespersonSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :password, :employer, :annual_sales_goal, :why_description
end
