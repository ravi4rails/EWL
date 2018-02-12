class Work < ApplicationRecord
  validates :name, :description, presence: true
  validates :name, uniqueness: true
  validates :name, :description, length: {minimum: 2}
end
