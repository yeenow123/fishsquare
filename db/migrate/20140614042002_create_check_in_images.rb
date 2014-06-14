class CreateCheckInImages < ActiveRecord::Migration
  def change
    create_table :check_in_images do |t|
      t.integer :check_in_id
      t.text :description

      t.timestamps
    end
  end
end
