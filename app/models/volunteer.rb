class Volunteer < ApplicationRecord
    has_many :organizations , through: :CreateJoinTableOrganizationsVolunteers
end
