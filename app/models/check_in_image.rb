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

class CheckInImage < ActiveRecord::Base

	belongs_to :check_in

	has_attached_file :image, :styles => { :large => "1024x1024>", :medium => "600x600>", :small => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	validates_attachment_presence :image	

end
