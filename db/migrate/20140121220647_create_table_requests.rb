class CreateTableRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
    	t.column :description, :string, :null => false
    	t.column :status, :string, :null => false
    	t.references :client, :foreign_key => true
    end
  end
end
