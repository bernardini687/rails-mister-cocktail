# frozen_string_literal: true

# Class documentation
class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses, dependent: :delete_all

  validates :name, presence: true, uniqueness: true, allow_blank: false
end
