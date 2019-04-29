class CreateSessions < ActiveRecord::Migration[5.2]
	def change
		create_table :sessions do |t|
		t.integer :user_id
		t.string :use_system
		t.datetime :start_date
		t.integer :play_time
		t.string :place
		t.string :session_name
		t.string :game_master
		t.datetime :deadline
		t.string :look
		t.string :need_persons
		t.string :session_type
		t.text :session_detail
		t.timestamps
		end
	end
end
