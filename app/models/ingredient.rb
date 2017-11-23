class Ingredient < ApplicationRecord
  MEASUREMENT = ["g","kg","pcs"]
  has_many :doses
  validates :name, presence: true , uniqueness: true
end
