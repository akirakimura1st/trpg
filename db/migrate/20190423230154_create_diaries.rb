class CreateDiaries < ActiveRecord::Migration[5.2]
	def change
	create_table :diaries do |t|
	t.integer :user_id
		t.string :title
		t.string :body
		t.string :spiler

		t.timestamps
		end
	end
end
