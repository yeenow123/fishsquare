class AddAttachmentImageToCheckInImages < ActiveRecord::Migration
  def self.up
    change_table :check_in_images do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :check_in_images, :image
  end
end
