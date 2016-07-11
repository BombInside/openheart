class Image < ApplicationRecord
  attachment :file
  belongs_to :post
end
