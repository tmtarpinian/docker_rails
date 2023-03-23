Article.destroy_all
Comment.destroy_all

50.times do |index|
  Article.create!(
    title: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 0).chop,
    body: Faker::Lorem.paragraph,
  )
end

p "Created #{Article.count} articles"

article_ids = Article.all.pluck(:id)

article_ids.each do |article_id|
  35.times do |index|
    Comment.create!(
      body: Faker::Lorem.paragraph,
      article_id: article_id
    )
  end

end

p "Created #{Comment.count} comments"

article_ids.slice(0, (article_ids.length/2.0).round).each { |id| Article.find(id).delete }