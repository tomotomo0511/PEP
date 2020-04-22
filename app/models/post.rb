class Post < ApplicationRecord
  validates :title, :content, presence: true
  has_many :comments
  belongs_to :user

  mount_uploader :image, ImageUploader
end
