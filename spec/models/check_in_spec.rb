# == Schema Information
#
# Table name: check_ins
#
#  id           :integer          not null, primary key
#  lat          :float
#  lng          :float
#  report_type  :string(255)
#  fishing_type :string(255)
#  notes        :text
#  created_at   :datetime
#  updated_at   :datetime
#  report_time  :datetime
#

require 'rails_helper'

RSpec.describe CheckIn, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
