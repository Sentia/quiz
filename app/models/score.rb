class Score < ActiveRecord::Base
  default_scope order("points DESC, time ASC")
  default_scope limit(3)

  validates :name, :points, presence: true
  validates :points, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
