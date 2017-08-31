# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#id 3개만들고 각각 게시글3개만듬
# (1..3).each do |i|
#     User.create(email:"elneln#{i}@naver.com", password:"111111#{i}", password_confirmation: "111111#{i}" )
#     (1..3).each do |j|
#         Post.create(user_id: i, title:"title#{i}#{j}",content:"content#{i}#{j}")
#     end
# end