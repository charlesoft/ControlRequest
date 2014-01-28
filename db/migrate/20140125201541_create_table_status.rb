class CreateTableStatus < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
    	t.column :description, :string, :null => false
    	t.timestamps
    end
  end
end
