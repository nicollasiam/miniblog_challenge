require 'faker'

admin = User.new(email: 'admin@admin.com', password: '123456', admin: true)
admin.save

user = User.new(email: 'a@a.com', password: '123456')
user.save

50.times do
  post = Post.new(head_title: Faker::Lorem.sentence, subtitle: Faker::Lorem.sentence, title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)
  post.user = admin
  post.save
end
