class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: { scope: :user_id }
  belongs_to :user
  has_many :ingredients
end
