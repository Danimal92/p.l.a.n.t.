class Organization < ApplicationRecord
    has_many :donors, through: :CreateJoinTableOrganizationsDonors
    has_many :volunteers, through: :CreateJoinTableOrganizationsVolunteers
end
