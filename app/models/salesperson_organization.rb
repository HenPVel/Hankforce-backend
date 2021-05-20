class SalespersonOrganization < ApplicationRecord
    belongs_to :salesperson
    belongs_to :organization
end
