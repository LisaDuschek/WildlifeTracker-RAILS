class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :name, :string
      t.column :date, :date
      t.column :latitude, :float
      t.column :longitude, :float
      t.column :species_id, :integer

      t.timestamps
    end
  end
end
