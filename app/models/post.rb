class Post < ApplicationRecord
  #include Rails.application.routes.url_helpers
  #mount_uploader :avatar, AvatarUploader
  
 # def to_jq_upload
 #   {
 #     "name" => read_attribute(:avatar),
 #     "size" => avatar.size,
 #     "url" => avatar.url,
 #     "thumbnail_url" => avatar.thumb.url,
 #     "delete_url" => picture_path(:id => id),
 #     "delete_type" => "DELETE" 
 #  }
 # end
 include Bootsy::Container
  has_many :images, dependent: :destroy
  accepts_attachments_for :images, attachment: :file, append: true
end
