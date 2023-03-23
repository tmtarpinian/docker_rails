Article.destroy_all
Comment.destroy_all

10000.times do |index|
  Article.create!(
    title: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 0).chop,
    body: Faker::Lorem.paragraph,
  )
end

p "Created #{Movie.count} movies"