class Opportunity < ApplicationRecord
    belongs_to :organization
    has_many :notes
    has_many :activities, dependent: :destroy
end
