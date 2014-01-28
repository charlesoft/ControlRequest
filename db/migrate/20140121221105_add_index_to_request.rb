class AddIndexToRequest < ActiveRecord::Migration
  def change
  	add_index :requests, :client_id
  end
end
