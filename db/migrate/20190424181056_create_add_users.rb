class CreateAddUsers < ActiveRecord::Migration[5.2]
	def change
		create_table :add_users do |t|

			t.references  :community,  index: true, foreign_key: { on_delete: :cascade }
			t.references  :user,  index: true, foreign_key: { on_delete: :cascade }
			t.timestamps
		end
	end
end
