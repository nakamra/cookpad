class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: { scope: :user_id }
  belongs_to :user
  has_many :ingredients
  accepts_nested_attributes_for :ingredients, allow_destroy: true, reject_if: :all_blank
end
