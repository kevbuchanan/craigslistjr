10.times do
  Category.create(title: Faker::Company.catch_phrase)
end

50.times do
  Post.create(title: Faker::Company.bs, body: Faker::Lorem.paragraph(sentence_count = 3, supplemental = false), category_id: rand(1..10))
end
