# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jerry = User.create(username: 'jerry', email: 'email@email.com', profile_pic: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRMs_6IhwAQn_ReZyLo5FuxVQPQt0t6mi8PMQ&usqp=CAU')

new_post = Post.create(title: 'New title', content: 'I wrote the first post ha', image_url: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.clubs.nfl.com%2Fimage%2Fprivate%2Ft_editorial_landscape_8_desktop_mobile%2Ff_auto%2Fbroncos%2Fzmccxbv18eobsvvtmck5.jpg&imgrefurl=https%3A%2F%2Fwww.denverbroncos.com%2Fteam%2Fplayers-roster%2Fjerry-jeudy%2F&tbnid=H9HfMzvc4G4aUM&vet=12ahUKEwiC4LXRwvbsAhWwi60KHfj8DbAQMygcegUIARCVAg..i&docid=iKfSYph0jHhPyM&w=824&h=464&q=jerry&ved=2ahUKEwiC4LXRwvbsAhWwi60KHfj8DbAQMygcegUIARCVAg', github_url: 'https://github.com/learn-co-curriculum/js-final-project-guidelines', upvote: 5, user_id: 1)

