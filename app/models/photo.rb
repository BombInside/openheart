class Photo < ApplicationRecord
  belongs_to :post 
  dragonfly_accessor :image

  validates :image, presence: true
  validates_size_of :image, maximum: 3500.kilobytes,
                    message: "изображение не может быть больше 3500 KB", if: :image_changed?

  validates_property :format, of: :image, in: [:jpeg, :jpg, :png, :bmp], case_sensitive: false,
                     message: "разрешены только эти форматы .jpeg, .jpg, .png, .bmp", if: :image_changed?
end
