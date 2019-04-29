class CreateCommentCommunities < ActiveRecord::Migration[5.2]
	def change
		create_table :comment_communities do |t|
			t.integer :admin_user_id
			t.integer :user_id
			t.integer :community_id
			t.string :comment
			t.timestamps
		end
	end
end
