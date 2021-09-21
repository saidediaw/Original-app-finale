class Comment < ApplicationRecord
  belongs_to :car, optional: true
  validates :comment, presence:true
  belongs_to :car
end
