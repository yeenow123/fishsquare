class AddReportTimeToCheckIns < ActiveRecord::Migration
  def change
    add_column :check_ins, :report_time, :datetime
  end
end
