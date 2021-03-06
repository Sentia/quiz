class Score < ActiveRecord::Base
  default_scope order("points DESC, time ASC")

  validates :name, :points, :time, presence: true
  validates :points, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
