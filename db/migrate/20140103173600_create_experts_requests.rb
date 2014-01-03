class CreateExpertsRequests < ActiveRecord::Migration
  def change
    create_table :experts_requests do |t|
      t.integer :expert_id
      t.integer :request_id
    end
  end
end
