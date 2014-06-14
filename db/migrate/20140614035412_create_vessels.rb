class CreateVessels < ActiveRecord::Migration
  def change
    create_table :vessels do |t|
      t.integer :check_in_id
      t.string :vessel_type
      t.string :vessel_number
      t.string :vessel_name
      t.string :estimated_crew
      t.text :notes

      t.timestamps
    end
  end
end
