class RenameExpertsRequestsToRequestsUsers < ActiveRecord::Migration
  def change
    rename_table :experts_requests, :requests_users
  end
end
