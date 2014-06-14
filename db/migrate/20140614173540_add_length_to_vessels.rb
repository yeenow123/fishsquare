class AddLengthToVessels < ActiveRecord::Migration
  def change
    add_column :vessels, :length, :string
  end
end
