require 'faker'

50.times do
  post = Post.new(head_title: Faker::Lorem.sentence, subtitle: Faker::Lorem.sentence, title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)
  post.save
end
