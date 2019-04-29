class CreateCthulhus < ActiveRecord::Migration[5.2]
	def change
		create_table :cthulhus do |t|
		t.integer :user_id
		t.text :character_image
			# ============ foundation_status ============
				t.integer :str
				t.integer :str_total
				t.integer :str_gain
				t.integer :str_temporary_increase

				t.integer :con
				t.integer :con_total
				t.integer :con_gain
				t.integer :con_temporary_increase

				t.integer :pow
				t.integer :pow_total
				t.integer :pow_gain
				t.integer :pow_temporary_increase

				t.integer :dex
				t.integer :dex_total
				t.integer :dex_gain
				t.integer :dex_temporary_increase

				t.integer :app
				t.integer :app_total
				t.integer :app_gain
				t.integer :app_temporary_increase

				t.integer :siz
				t.integer :siz_total
				t.integer :siz_gain
				t.integer :siz_temporary_increase

				t.integer :int
				t.integer :int_total
				t.integer :int_gain
				t.integer :int_temporary_increase

				t.integer :edu
				t.integer :edu_total
				t.integer :edu_gain
				t.integer :edu_temporary_increase

				t.integer :default_san
				t.integer :default_san_total
				t.integer :default_san_gain
		t.integer :default_san_temporary_increase
		t.integer :default_san_now
		t.integer :default_san_unstable_region

			t.integer :luck
			t.integer :luck_total
			t.integer :luck_gain
			t.integer :luck_temporary_increase

			t.integer :idea
			t.integer :idea_total
			t.integer :idea_gain
			t.integer :idea_temporary_increase

			t.integer :knowledge
			t.integer :knowledge_total
			t.integer :knowledge_gain
			t.integer :knowledge_temporary_increase

			t.integer :hitpoint
			t.integer :hitpoint_total
			t.integer :hitpoint_gain
			t.integer :hitpoint_temporary_increase

			t.integer :magicpoint
			t.integer :magicpoint_total
			t.integer :magicpoint_gain
			t.integer :magicpoint_temporary_increase

			t.integer :career_skills
			t.integer :career_skills_used
			t.integer :career_skills_gain

			t.integer :hobby_skills
			t.integer :hobby_skills_used
			t.integer :hobby_skills_gain

			t.string :damage_bonus

			# ============ exploration_status ============
			t.integer :first_aid_default, default: "30"
			t.integer :first_aid_add_career
			t.integer :first_aid_add_hobby
			t.integer :first_aid_add_auxesis
			t.integer :first_aid_add_etcetera
			t.integer :first_aid_total

			t.integer :locksmith_default, default: "1"
			t.integer :locksmith_add_career
			t.integer :locksmith_add_hobby
			t.integer :locksmith_add_auxesis
			t.integer :locksmith_add_etcetera
			t.integer :locksmith_total

			t.integer :conceal_default, default: "15"
			t.integer :conceal_add_career
			t.integer :conceal_add_hobby
			t.integer :conceal_add_auxesis
			t.integer :conceal_add_etcetera
			t.integer :conceal_total

			t.integer :hide_default, default: "10"
			t.integer :hide_add_career
			t.integer :hide_add_hobby
			t.integer :hide_add_auxesis
			t.integer :hide_add_etcetera
			t.integer :hide_total

			t.integer :listen_default, default: "25"
			t.integer :listen_add_career
			t.integer :listen_add_hobby
			t.integer :listen_add_auxesis
			t.integer :listen_add_etcetera
			t.integer :listen_total

			t.integer :sneak_default, default: "10"
			t.integer :sneak_add_career
			t.integer :sneak_add_hobby
			t.integer :sneak_add_auxesis
			t.integer :sneak_add_etcetera
			t.integer :sneak_total

			t.integer :photography_default, default: "10"
			t.integer :photography_add_career
			t.integer :photography_add_hobby
			t.integer :photography_add_auxesis
			t.integer :photography_add_etcetera
			t.integer :photography_total

			t.integer :psychoanalysis_default, default: "1"
			t.integer :psychoanalysis_add_career
			t.integer :psychoanalysis_add_hobby
			t.integer :psychoanalysis_add_auxesis
			t.integer :psychoanalysis_add_etcetera
			t.integer :psychoanalysis_total

			t.integer :track_default, default: "10"
			t.integer :track_add_career
			t.integer :track_add_hobby
			t.integer :track_add_auxesis
			t.integer :track_add_etcetera
			t.integer :track_total

			t.integer :climb_default, default: "40"
			t.integer :climb_add_career
			t.integer :climb_add_hobby
			t.integer :climb_add_auxesis
			t.integer :climb_add_etcetera
			t.integer :climb_total

			t.integer :library_use_default, default: "30"
			t.integer :library_use_add_career
			t.integer :library_use_add_hobby
			t.integer :library_use_add_auxesis
			t.integer :library_use_add_etcetera
			t.integer :library_use_total

			t.integer :spot_hidden_default, default: "25"
			t.integer :spot_hidden_add_career
			t.integer :spot_hidden_add_hobby
			t.integer :spot_hidden_add_auxesis
			t.integer :spot_hidden_add_etcetera
			t.integer :spot_hidden_total

			t.integer :original_exploration_skill_id

			# ============ conbat_status ============
			t.integer :avoidance_default
			t.integer :avoidance_add_career
			t.integer :avoidance_add_hobby
			t.integer :avoidance_add_auxesis
			t.integer :avoidance_add_etcetera
			t.integer :avoidance_total

			t.integer :kick_defalut, default: "25"
			t.integer :kick_add_career
			t.integer :kick_add_hobby
			t.integer :kick_add_auxesis
			t.integer :kick_add_etcetera
			t.integer :kick_total

			t.integer :grapple_defalut, default: "25"
			t.integer :grapple_add_career
			t.integer :grapple_add_hobby
			t.integer :grapple_add_auxesis
			t.integer :grapple_add_etcetera
			t.integer :grapple_total

			t.integer :fist_defalut, default: "50"
			t.integer :fist_add_career
			t.integer :fist_add_hobby
			t.integer :fist_add_auxesis
			t.integer :fist_add_etcetera
			t.integer :fist_total

			t.integer :head_butt_defalut, default: "10"
			t.integer :head_butt_add_career
			t.integer :head_butt_add_hobby
			t.integer :head_butt_add_auxesis
			t.integer :head_butt_add_etcetera
			t.integer :head_butt_total

			t.integer :throw_defalut, default: "25"
			t.integer :throw_add_career
			t.integer :throw_add_hobby
			t.integer :throw_add_auxesis
			t.integer :throw_add_etcetera
			t.integer :throw_total

			t.integer :martial_arts_default, default: "1"
			t.integer :martial_arts_add_career
			t.integer :martial_arts_add_hobby
			t.integer :martial_arts_add_auxesis
			t.integer :martial_arts_add_etcetera
			t.integer :martial_arts_total

			t.integer :handgun_defalut, default: "20"
			t.integer :handgun_add_career
			t.integer :handgun_add_hobby
			t.integer :handgun_add_auxesis
			t.integer :handgun_add_etcetera
			t.integer :handgun_total

			t.integer :submachine_gun_default, default: "15"
			t.integer :submachine_gun_add_career
			t.integer :submachine_gun_add_hobby
			t.integer :submachine_gun_add_auxesis
			t.integer :submachine_gun_add_etcetera
			t.integer :submachine_gun_total

			t.integer :shot_gun_defalut, default: "30"
			t.integer :shot_gun_add_career
			t.integer :shot_gun_add_hobby
			t.integer :shot_gun_add_auxesis
			t.integer :shot_gun_add_etcetera
			t.integer :shot_gun_total

			t.integer :machine_gun_default, default: "15"
			t.integer :machine_gun_add_career
			t.integer :machine_gun_add_hobby
			t.integer :machine_gun_add_auxesis
			t.integer :machine_gun_add_etcetera
			t.integer :machine_gun_total

			t.integer :rifle_default, default: "25"
			t.integer :rifle_add_career
			t.integer :rifle_add_hobby
			t.integer :rifle_add_auxesis
			t.integer :rifle_add_etcetera
			t.integer :rifle_total

			t.integer :original_combat_skill_id

			# ============ act_status ============
			t.integer :drive_automobile_default, default: "20"
			t.integer :drive_automobile_add_career
			t.integer :drive_automobile_add_hobby
			t.integer :drive_automobile_add_auxesis
			t.integer :drive_automobile_add_etcetera
			t.integer :drive_automobile_total

			t.integer :electrical_repair_default, default: "20"
			t.integer :electrical_repair_add_career
			t.integer :electrical_repair_add_hobby
			t.integer :electrical_repair_add_auxesis
			t.integer :electrical_repair_add_etcetera
			t.integer :electrical_repair_total

			t.integer :operate_heavy_machine_default, default: "1"
			t.integer :operate_heavy_machine_add_career
			t.integer :operate_heavy_machine_add_hobby
			t.integer :operate_heavy_machine_add_auxesis
			t.integer :operate_heavy_machine_add_etcetera
			t.integer :operate_heavy_machine_total

			t.integer :ride_horse_default, default: "5"
			t.integer :ride_horse_add_career
			t.integer :ride_horse_add_hobby
			t.integer :ride_horse_add_auxesis
			t.integer :ride_horse_add_etcetera
			t.integer :ride_horse_total

			t.integer :swim_default, default: "25"
			t.integer :swim_add_career
			t.integer :swim_add_hobby
			t.integer :swim_add_auxesis
			t.integer :swim_add_etcetera
			t.integer :swim_total

			t.integer :production_default, default: "5"
			t.integer :production_add_career
			t.integer :production_add_hobby
			t.integer :production_add_auxesis
			t.integer :production_add_etcetera
			t.integer :production_total

			t.integer :maneuver_default, default: "1"
			t.integer :maneuver_add_career
			t.integer :maneuver_add_hobby
			t.integer :maneuver_add_auxesis
			t.integer :maneuver_add_etcetera
			t.integer :maneuver_total

			t.integer :jumping_default, default: "25"
			t.integer :jumping_add_career
			t.integer :jumping_add_hobby
			t.integer :jumping_add_auxesis
			t.integer :jumping_add_etcetera
			t.integer :jumping_total

			t.integer :electrical_repair_default, default: "10"
			t.integer :electrical_repair_add_career
			t.integer :electrical_repair_add_hobby
			t.integer :electrical_repair_add_auxesis
			t.integer :electrical_repair_add_etcetera
			t.integer :electrical_repair_total

			t.integer :navigate_default, default: "10"
			t.integer :navigate_add_career
			t.integer :navigate_add_hobby
			t.integer :navigate_add_auxesis
			t.integer :navigate_add_etcetera
			t.integer :navigate_total

			t.integer :disguise_default, default: "1"
			t.integer :disguise_add_career
			t.integer :disguise_add_hobby
			t.integer :disguise_add_auxesis
			t.integer :disguise_add_etcetera
			t.integer :disguise_total

			t.integer :original_search_skill_id

			# ============ discussion_status ============
			t.integer :win_over_default, default: "5"
			t.integer :win_over_add_career
			t.integer :win_over_add_hobby
			t.integer :win_over_add_auxesis
			t.integer :win_over_add_etcetera
			t.integer :win_over_total

			t.integer :reliance_default, default: "15"
			t.integer :reliance_add_career
			t.integer :reliance_add_hobby
			t.integer :reliance_add_auxesis
			t.integer :reliance_add_etcetera
			t.integer :reliance_total

			t.integer :persuasion_defalut, default: "15"
			t.integer :persuasion_add_career
			t.integer :persuasion_add_hobby
			t.integer :persuasion_add_auxesis
			t.integer :persuasion_add_etcetera
			t.integer :persuasion_total

			t.integer :haggling_default, default: "5"
			t.integer :haggling_add_career
			t.integer :haggling_add_hobby
			t.integer :haggling_add_auxesis
			t.integer :haggling_add_etcetera
			t.integer :haggling_total

			t.integer :native_language_default, default: "65"
			t.integer :native_language_add_career
			t.integer :native_language_add_hobby
			t.integer :native_language_add_auxesis
			t.integer :native_language_add_etcetera
			t.integer :native_language_total

			t.integer :original_discussion_skill_id


			# ============ knowledge_status ============
			t.integer :medicine_default, default: "5"
			t.integer :medicine_add_career
			t.integer :medicine_add_hobby
			t.integer :medicine_add_auxesis
			t.integer :medicine_add_etcetera
			t.integer :medicine_total

			t.integer :occult_default, default: "5"
			t.integer :occult_add_career
			t.integer :occult_add_hobby
			t.integer :occult_add_auxesis
			t.integer :occult_add_etcetera
			t.integer :occult_total

			t.integer :science_default, default: "1"
			t.integer :science_add_career
			t.integer :science_add_hobby
			t.integer :science_add_auxesis
			t.integer :science_add_etcetera
			t.integer :science_total

			t.integer :cthulhu_mythos_default, default: "0"
			t.integer :cthulhu_mythos_add_career
			t.integer :cthulhu_mythos_add_hobby
			t.integer :cthulhu_mythos_add_auxesis
			t.integer :cthulhu_mythos_add_etcetera
			t.integer :cthulhu_mythos_total

			t.integer :art_default, default: "5"
			t.integer :art_add_career
			t.integer :art_add_hobby
			t.integer :art_add_auxesis
			t.integer :art_add_etcetera
			t.integer :art_total

			t.integer :finance_default, default: "10"
			t.integer :finance_add_career
			t.integer :finance_add_hobby
			t.integer :finance_add_auxesis
			t.integer :finance_add_etcetera
			t.integer :finance_total

			t.integer :archaeology_default, default: "1"
			t.integer :archaeology_add_career
			t.integer :archaeology_add_hobby
			t.integer :archaeology_add_auxesis
			t.integer :archaeology_add_etcetera
			t.integer :archaeology_total

			t.integer :computer_default, default: "1"
			t.integer :computer_add_career
			t.integer :computer_add_hobby
			t.integer :computer_add_auxesis
			t.integer :computer_add_etcetera
			t.integer :computer_total

			t.integer :psychology_default, default: "5"
			t.integer :psychology_add_career
			t.integer :psychology_add_hobby
			t.integer :psychology_add_auxesis
			t.integer :psychology_add_etcetera
			t.integer :psychology_total

			t.integer :anthropology_default, default: "1"
			t.integer :anthropology_add_career
			t.integer :anthropology_add_hobby
			t.integer :anthropology_add_auxesis
			t.integer :anthropology_add_etcetera
			t.integer :anthropology_total

			t.integer :biology_default, default: "1"
			t.integer :biology_add_career
			t.integer :biology_add_hobby
			t.integer :biology_add_auxesis
			t.integer :biology_add_etcetera
			t.integer :biology_total

			t.integer :geology_default, default: "1"
			t.integer :geology_add_career
			t.integer :geology_add_hobby
			t.integer :geology_add_auxesis
			t.integer :geology_add_etcetera
			t.integer :geology_total

			t.integer :electronics_default, default: "1"
			t.integer :electronics_add_career
			t.integer :electronics_add_hobby
			t.integer :electronics_add_auxesis
			t.integer :electronics_add_etcetera
			t.integer :electronics_total

			t.integer :astronomy_default, default: "1"
			t.integer :astronomy_add_career
			t.integer :astronomy_add_hobby
			t.integer :astronomy_add_auxesis
			t.integer :astronomy_add_etcetera
			t.integer :astronomy_total

			t.integer :natural_history_default, default: "10"
			t.integer :natural_history_add_career
			t.integer :natural_history_add_hobby
			t.integer :natural_history_add_auxesis
			t.integer :natural_history_add_etcetera
			t.integer :natural_history_total

			t.integer :physics_default, default: "1"
			t.integer :physics_add_career
			t.integer :physics_add_hobby
			t.integer :physics_add_auxesis
			t.integer :physics_add_etcetera
			t.integer :physics_total

			t.integer :law_default, default: "5"
			t.integer :law_add_career
			t.integer :law_add_hobby
			t.integer :law_add_auxesis
			t.integer :law_add_etcetera
			t.integer :law_total

			t.integer :pharmacy_default, default: "1"
			t.integer :pharmacy_add_career
			t.integer :pharmacy_add_hobby
			t.integer :pharmacy_add_auxesis
			t.integer :pharmacy_add_etcetera
			t.integer :pharmacy_total

			t.integer :historical_science_default, default: "20"
			t.integer :historical_science_add_career
			t.integer :historical_science_add_hobby
			t.integer :historical_science_add_auxesis
			t.integer :historical_science_add_etcetera
			t.integer :historical_science_total

			t.integer :original_knowledge_skill_id

			# ============ weapon_armor_status ============
			t.integer :weapon_armor_id

			# ============ possession_status ============
			t.integer :possession_id

			# ============ personal_data ============
			t.string :character_name
			t.string :sheet_tag
			t.string :job
			t.string :character_age
			t.string :character_sexuality
			t.string :character_height
			t.string :character_weight
			t.string :character_hometown
			t.string :character_hair_color
			t.string :character_eye_color
			t.string :character_skin_color
			t.integer :original_personal_data_id
			t.text :character_career_etcetera
			t.text :character_image_id

			t.timestamps
			end
	end
end
