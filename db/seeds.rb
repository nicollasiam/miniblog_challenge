require 'faker'

50.times do
  post = Post.new(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)
  post.save
end
