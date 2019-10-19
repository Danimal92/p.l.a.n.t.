class Donor < ApplicationRecord
    has_many :organizations, through: :CreateJoinTableOrganizationsDonors
    
end
