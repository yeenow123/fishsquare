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

require 'rails_helper'

RSpec.describe Catch, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
