class Organization < ApplicationRecord
    has_many :contacts
    has_many :salespeople, through: :salesperson_organizations
    has_many :opportunities
end
