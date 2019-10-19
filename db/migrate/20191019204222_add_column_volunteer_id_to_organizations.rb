class AddColumnVolunteerIdToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :volunteer_id, :integer
  end
end
