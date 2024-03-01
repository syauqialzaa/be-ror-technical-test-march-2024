class Book < ApplicationRecord
  belongs_to :author

  validates :title, :genre, :author, presence: true, length: { minimum: 1 }
  validates :year, presence: true, numericality: { only_integer: true }
end
