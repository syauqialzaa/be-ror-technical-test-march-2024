class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  validates :name, presence: true, length: { minimum: 1 }
  validates :address, presence: true, length: { minimum: 1 }
end
