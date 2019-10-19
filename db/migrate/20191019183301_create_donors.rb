class CreateDonors < ActiveRecord::Migration[6.0]
  def change
    create_table :donors do |t|
      t.string :name
      t.boolean :help
      t.boolean :active
      t.text :crops
      t.string :location
      t.datetime :harvest_time
      t.boolean :harvest

      t.timestamps
    end
  end
end
