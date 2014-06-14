class AddColorToVessels < ActiveRecord::Migration
  def change
    add_column :vessels, :color, :string
  end
end
