class Anime < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true, length: { maximum: 30 }
  validates :all_part, presence: true, numericality: { only_integer: true }
  validates :current_part, presence: true, numericality: { only_integer: true, less_than_or_equal_to: :all_part }
end
