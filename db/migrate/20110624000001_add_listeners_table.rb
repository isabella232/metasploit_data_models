class AddListenersTable < ActiveRecord::Migration[4.2]
	def self.up
		create_table :listeners do |t|
			t.timestamps null: false
			t.integer :workspace_id, :null => false, :default => 1
			t.integer :task_id
			t.boolean :enabled, :default => true
			t.text :owner
			t.text :payload
			t.text :address
			t.integer :port
			t.binary :options
		end
	end
	def self.down
		drop_table :listeners
	end
end

