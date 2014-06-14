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
#  length         :string(255)
#  color          :string(255)
#

require 'rails_helper'

RSpec.describe Vessel, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
