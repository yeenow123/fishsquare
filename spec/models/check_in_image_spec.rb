# == Schema Information
#
# Table name: check_in_images
#
#  id                 :integer          not null, primary key
#  check_in_id        :integer
#  description        :text
#  created_at         :datetime
#  updated_at         :datetime
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'rails_helper'

RSpec.describe CheckInImage, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
