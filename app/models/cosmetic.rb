class Cosmetic < ActiveRecord::Base
  validates :name, :brand, :expiration_date, presence: true
  validates :name, uniqueness: true

  has_many :comments
end
