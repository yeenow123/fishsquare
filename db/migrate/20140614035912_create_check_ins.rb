class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.float :lat
      t.float :lng
      t.string :type
      t.string :fishing_type
      t.text :notes

      t.timestamps
    end
  end
end
