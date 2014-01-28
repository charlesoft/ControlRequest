class CreateTableClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
    	t.column :description, :string, :null => false
    	t.column :adress, :string, :null => false
    	t.references :user, :foreign_key => true
    	t.timestamps	
    end
  end
end
