class RemovePeriodFromSchedules < ActiveRecord::Migration[5.2]
  def change
    remove_column :schedules, :period, :date
  end
end
