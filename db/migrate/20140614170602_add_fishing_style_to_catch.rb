class AddFishingStyleToCatch < ActiveRecord::Migration
  def change
    add_column :catches, :fishing_style, :string
  end
end
