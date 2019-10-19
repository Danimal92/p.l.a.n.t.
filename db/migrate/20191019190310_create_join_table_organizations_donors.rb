class CreateJoinTableOrganizationsDonors < ActiveRecord::Migration[6.0]
  def change
    create_join_table :organizations, :donors do |t|
      # t.index [:organization_id, :donor_id]
      # t.index [:donor_id, :organization_id]
    end
  end
end
