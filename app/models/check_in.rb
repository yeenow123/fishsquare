# == Schema Information
#
# Table name: check_ins
#
#  id          :integer          not null, primary key
#  lat         :float
#  lng         :float
#  report_type :string(255)
#  notes       :text
#  created_at  :datetime
#  updated_at  :datetime
#  report_time :datetime
#

class CheckIn < ActiveRecord::Base

	has_one :catch
	has_one :vessel
	has_one :check_in_image

	def report_time_formatted
		report_time.strftime("%Y-%m-%d %H:%M")
	end

	def has_catch?
		self.report_type == 'Poaching // Illegal Fishing'
	end
end
