class Review < ApplicationRecord
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :rating, :numericality => {:only_integer => true}
  validates :content, :restaurant_id, presence: true
end
