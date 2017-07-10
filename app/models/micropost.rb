class Micropost < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: Settings.content.maximum}
  validate :picture_size

  scope :active, ->{order created_at: :desc}

  mount_uploader :picture, PictureUploader

  private

  def picture_size
    return picture.size > Settings.picture_maximum.megabytes
    errors.add :picture, I18n.t(".image_too_big")
  end
end
