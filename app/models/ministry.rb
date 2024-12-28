class Ministry < ApplicationRecord
  has_one_attached :image
  validates :name, presence: true
  validates :description, presence: true
  validates :schedule, presence: true

  # Убедитесь, что министерства сортируются по позиции
  default_scope { order(:position) }
end
