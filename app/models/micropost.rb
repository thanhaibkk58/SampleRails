class Micropost < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: Settings.content.maximum}
  validate :picture_size

  scope :active, ->{order created_at: :desc}
  scope :feed_for, ->id do
    where "user_id IN (SELECT followed_id from relationships
      WHERE follower_id = :id) OR user_id = :id", id: id
  end

  mount_uploader :picture, PictureUploader

  private

  def picture_size
    return picture.size > Settings.picture_maximum.megabytes
    errors.add :picture, I18n.t(".image_too_big")
  end
end
