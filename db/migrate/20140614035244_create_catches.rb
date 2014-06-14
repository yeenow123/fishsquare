class CreateCatches < ActiveRecord::Migration
  def change
    create_table :catches do |t|
      t.integer :check_in_id
      t.string :species
      t.text :notes

      t.timestamps
    end
  end
end
