Comment.delete_all
Link.delete_all
User.delete_all

USERS =
[
  { name: 'Neo', email: 'neo@mail.com', password: 'secretus' },
  { name: 'Leo', email: 'leo@mail.com', password: 'secretus' }
]

USERS.each do |user|
  User.create!(user)
end

puts "#{User.count} user(s) are successfully created"

LINKS =
[
  { title: 'NoName Club', url: 'http://nnmclub.to/', user_id: rand(1..User.count) },
  { title: 'Board4all Forum', url: 'https://www.board4all.biz/', user_id: rand(1..User.count) }
]

LINKS.each do |link|
  Link.create!(link)
end

puts "#{Link.count} link(s) are successfully created"

COMMENTS =
[
  { body: 'Very nice link! Thanks)', link_id: rand(1..Link.count), user_id: rand(1..User.count) },
  { body: 'The my best link!!!', link_id: rand(1..Link.count), user_id: rand(1..User.count) }
]

COMMENTS.each do |comment|
  Comment.create!(comment)
end

puts "#{Comment.count} comments(s) are successfully created"
