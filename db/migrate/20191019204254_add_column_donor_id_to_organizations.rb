class AddColumnDonorIdToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :donor_id, :integer
  end
end
