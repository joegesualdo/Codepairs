class AddTimestampsToRequests < ActiveRecord::Migration
  def change
    change_table(:requests){ |t| t.timestamps }
  end
end
