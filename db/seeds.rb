

if Rails.env.development?
User.delete_all
Post.delete_all
30.times do 
  u = User.create(name: Faker::Name.name)
  u.avatar = Faker::Avatar.image
  u.save!
end

30.times do
  offset = User.first.id
  uid = [* offset..(offset + User.count)].sample
  u = User.find(uid)
  Post.create(user: u, title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph)
end
end