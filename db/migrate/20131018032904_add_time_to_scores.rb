class AddTimeToScores < ActiveRecord::Migration
  def change
    add_column :scores, :time, :integer
  end
end
