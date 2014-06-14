# == Schema Information
#
# Table name: vessels
#
#  id             :integer          not null, primary key
#  check_in_id    :integer
#  vessel_type    :string(255)
#  vessel_number  :string(255)
#  vessel_name    :string(255)
#  estimated_crew :string(255)
#  notes          :text
#  created_at     :datetime
#  updated_at     :datetime
#

class Vessel < ActiveRecord::Base

	belongs_to :check_in

end
