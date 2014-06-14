# == Schema Information
#
# Table name: check_ins
#
#  id           :integer          not null, primary key
#  lat          :float
#  lng          :float
#  type         :string(255)
#  fishing_type :string(255)
#  notes        :text
#  created_at   :datetime
#  updated_at   :datetime
#

class CheckIn < ActiveRecord::Base

	has_one :catch
	has_one :vessel
	has_one :check_in_image

end
