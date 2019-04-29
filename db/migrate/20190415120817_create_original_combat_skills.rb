class CreateOriginalCombatSkills < ActiveRecord::Migration[5.2]
	def change
	create_table :original_combat_skills do |t|
	t.integer :cthulhu_id
		t.string :original_combat_skill_name
		t.integer :original_combat_skill_defalut
		t.integer :original_combat_add_career
		t.integer :original_combat_add_hobby
		t.integer :original_combat_add_auxesis
		t.integer :original_combat_add_etcetera
		t.integer :original_combat_total

		t.timestamps
		end
	end
end
