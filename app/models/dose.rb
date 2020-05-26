class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates_associated :cocktail, presence: true
  validates_associated :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
