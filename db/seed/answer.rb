user_ids = User.all.pluck(:id)
question_ids = Question.all.pluck(:id)

20.times do
  user_id = user_ids.sample
  question_id = question_ids.sample
  message = Faker::Hipster.sentence
  created_at = Time.now

  Answer.create(user_id: user_id, question_id: question_id,
    message: message, created_at: created_at)
end

puts 'answer seed complete'
