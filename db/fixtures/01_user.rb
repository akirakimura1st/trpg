x = 0
60.times do
	x += 1
	User.seed do |s|
      s.user_name = "ユーザー#{x}"
		s.email = "user#{x}@com"
		s.profile_image = Rails.root.join("db/fixtures/profile_image/profile_image#{x}.jpeg").open
      s.password = "asdasd"
      s.introduction = "はじめまして！！！は私はユーザー#{x}です"
   end
end