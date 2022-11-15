class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CUISINE = %w[chinese italian japanese french belgian]

  validates :name, presence: true
  validates :category, inclusion: { in: CUISINE }
  validates :address, presence: true
  validates :phone_number, presence: true
end
