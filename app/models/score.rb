class Score < ActiveRecord::Base
  validates :name, :points, presence: true
end
