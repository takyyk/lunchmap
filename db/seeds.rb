10.times do |i|
  gimei = Gimei.new
  User.create!(email: "test#{i}@test.com", password: "password", password_confirmation: "password", last_name: gimei.last.kanji, first_name: gimei.first.kanji)
  Report.create!(title: "タイトル #{i}", body: "本文 #{i}", user_id: User.offset(rand(User.count)).first.id)
end
