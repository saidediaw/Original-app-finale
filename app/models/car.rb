class Car < ApplicationRecord
  mount_uploader :picture, ImageUploader
  belongs_to :user
  validates :name, presence: true
  validates :color, presence: true
  validates :weight, presence: true, numericality: { greater_than: 0 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :age, presence: true

  has_many :comments, dependent: :destroy
# @search = Car.search(params[:q])
end
