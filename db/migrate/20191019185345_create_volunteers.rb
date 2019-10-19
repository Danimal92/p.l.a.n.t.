class CreateVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.boolean :harvest
      t.boolean :drive

      t.timestamps
    end
  end
end
