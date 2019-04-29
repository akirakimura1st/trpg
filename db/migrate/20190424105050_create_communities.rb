class CreateCommunities < ActiveRecord::Migration[5.2]
	def change
		create_table :communities do |t|
			t.integer :admin_user_id
			t.text :community_image_id
			t.string :community_type
			t.string :community_title
			t.text :community_detail
			t.timestamps
		end
	end
end
