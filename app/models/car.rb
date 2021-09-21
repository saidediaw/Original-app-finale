class Car < ApplicationRecord
  mount_uploader :picture, ImageUploader
  belongs_to :user
  validates :name, presence: true
  validates :color, presence: true
  validates :weight, presence: true, numericality: { greater_than: 0 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :age, presence: true

  has_many :comments, dependent: :destroy
  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%")
    else
      order('id desc')
    end
  end
# @search = Car.search(params[:q])
end
