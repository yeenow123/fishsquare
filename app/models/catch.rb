# == Schema Information
#
# Table name: catches
#
#  id            :integer          not null, primary key
#  check_in_id   :integer
#  species       :string(255)
#  notes         :text
#  created_at    :datetime
#  updated_at    :datetime
#  fishing_style :string(255)
#

class Catch < ActiveRecord::Base
	belongs_to :check_in
end
