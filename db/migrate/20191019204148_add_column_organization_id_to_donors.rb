class AddColumnOrganizationIdToDonors < ActiveRecord::Migration[6.0]
  def change
    add_column :donors, :organization_id, :integer
  end
end
