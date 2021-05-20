class Salesperson < ApplicationRecord
    has_many :salesperson_organizations
    has_many :organizations, through: :salesperson_organizations
    has_many :opportunities, through: :organizations
end
