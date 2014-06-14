class RemoveFishingTypeFromCheckIns < ActiveRecord::Migration
  def change
    remove_column :check_ins, :fishing_type, :string
  end
end
