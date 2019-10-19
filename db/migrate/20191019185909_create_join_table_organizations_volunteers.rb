class CreateJoinTableOrganizationsVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :organizations, :volunteers do |t|
      # t.index [:organization_id, :volunteer_id]
      # t.index [:volunteer_id, :organization_id]
    end
  end
end
