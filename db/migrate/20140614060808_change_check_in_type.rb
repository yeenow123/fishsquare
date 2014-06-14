class ChangeCheckInType < ActiveRecord::Migration
  def change
  	rename_column :check_ins, :type, :report_type
  end
end
