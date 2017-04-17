# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# user1 = User.create(name: "Sheri", email: "smoline@gmail.com", password: "password", password_confirmation: "password")
# user2 = User.create(name: "James", email: "james@email.com", password: "password", password_confirmation: "password")

# Listed over 30 days ago
home1 = Home.where(id: 1)
home1.update(created_at: '2017-02-17 12:16:36 UTC')

home3 = Home.where(id: 3)
home3.update(created_at: '2017-02-17 12:17:36 UTC')

home5 = Home.where(id: 5)
home5.update(created_at: '2017-02-17 12:18:36 UTC')

home7 = Home.where(id: 7)
home7.update(created_at: '2017-02-17 12:19:36 UTC')

home9 = Home.where(id: 9)
home9.update(created_at: '2017-02-17 12:10:36 UTC')

# Listed under 2 days ago
home2 = Home.where(id: 2)
home2.update(created_at: '2017-04-17 12:16:36 UTC')

home4 = Home.where(id: 4)
home4.update(created_at: '2017-04-17 12:15:36 UTC')

home6 = Home.where(id: 6)
home6.update(created_at: '2017-04-17 12:14:36 UTC')

home8 = Home.where(id: 8)
home8.update(created_at: '2017-04-17 12:13:36 UTC')

home10 = Home.where(id: 10)
home10.update(created_at: '2017-04-17 12:12:36 UTC')

home14 = Home.where(id: 14)
home14.update(created_at: '2017-04-17 12:11:36 UTC')
