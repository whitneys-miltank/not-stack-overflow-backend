user_ids = User.all.pluck(:id)

10.times do
  user_id = user_ids.sample
  message = Faker::Hipster.sentence
  created_at = Time.now

  Question.create(user_id: user_id, message: message, created_at: created_at)
end

puts 'Question seed complete'
