class FixEventDateTimes < ActiveRecord::Migration[7.0]
  def change
    change_table :events do |t|
      t.remove :datetime
      t.datetime :start
      t.datetime :end
    end
  end
end
