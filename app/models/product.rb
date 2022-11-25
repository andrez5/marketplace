class Product < ApplicationRecord
  belongs_to :user
  has_many :offers, dependent: :destroy
  has_one_attached :photo
  validates :title, :info, :photo, :available, :price, presence: true
end
