# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "We seeding..." 
p "it's gonna be legen--" 
p "wait for it..."

user1 = User.create(first_name: "ricky", last_name: "wab", email: "ricky@rick.r", password: "123", username: "wabox", pro_pic: "https://images-na.ssl-images-amazon.com/images/I/41WDJyc%2Bj6L._SY355_.jpg")
user2 = User.create(first_name: "jim", last_name: "Bagz", email: "jim@jim.j", password: "123", username: "jimmyeatworld", pro_pic: "https://vignette.wikia.nocookie.net/jimmyneutron/images/5/57/Jimmy_Neutron.png/revision/latest?cb=20180219044703")
user3 = User.create(first_name: "Carole", last_name: "Baskin", email: "Carole@BigCatRescue.com", password: "123", username: "CoolKat", pro_pic: "https://www.indiewire.com/wp-content/uploads/2020/04/Screen-Shot-2020-04-01-at-3.02.44-PM.png?w=780")
user4 = User.create(first_name: "Joe", last_name: "Exotic", email: "Joe@GWtiger.com", password: "123", username: "JoeExotix", pro_pic: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/joe-exotic-mugshot-1584703321.jpg")
user5 = User.create(first_name: "Doctor", last_name: "Faucci", email: "Faucci@us.guv", password: "123", username: "DrFaucci", pro_pic: "https://s.abcnews.com/images/ThisWeek/200315_tw_fauci_hpMain_16x9_992.jpg")
user6 = User.create(first_name: "Donald", last_name: "Trump", email: "Don@us.guv", password: "123", username: "Trump", pro_pic: "https://upload.wikimedia.org/wikipedia/commons/5/56/Donald_Trump_official_portrait.jpg")
user7 = User.create(first_name: "Jonah", last_name: "Hill", email: "Jonah@hill.com", password: "123", username: "JonahHillxoxo", pro_pic: "https://www.aceshowbiz.com/images/wennpic/wenn2894737.jpg")
user8 = User.create(first_name: "Rudy", last_name: "Gilbert", email: "Rudy@jazz.com", password: "123", username: "CoughDaddyRudy", pro_pic: "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB10YuFy.img?h=0&w=720&m=6&q=60&u=t&o=f&l=f&x=1221&y=600")
user9 = User.create(first_name: "Yoan", last_name: "Ante", email: "Yoan@yoyo.com", password: "123", username: "Yoshinator", pro_pic: "https://candacewaller.com/wp-content/uploads/2017/12/YoanII-e1513038349148.jpg")
user10 = User.create(first_name: "HotRod", last_name: "Rodriguez", email: "Hotrod@hoorah.com", password: "123", username: "HotRod", pro_pic: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/ThreeWindowCoupeHotrod6791.jpg/1200px-ThreeWindowCoupeHotrod6791.jpg")

p "Users were seeded!"
chat1 = Chat.create(topic: "quarantine chronicles", owner_id: user1.id)
chat2 = Chat.create(topic: "covid updates", owner_id: user2.id)
chat3 = Chat.create(topic: "tiger king", owner_id: user3.id)
chat4 = Chat.create(topic: "stop juuling forum", owner_id: user4.id)
chat5 = Chat.create(topic: "software engineering basics", owner_id: user5.id)
chat6 = Chat.create(topic: "hot rod forum", owner_id: user6.id)

p "Chats were seeded!"

message1 = Message.create(content: "dude i just dont know if i can stay inside another day", user_id: user1.id, chat_id: chat1.id)
message2 = Message.create(content: "what did you do today?", user_id: user2.id, chat_id: chat1.id)
message3 = Message.create(content: "bruhhh this sucks", user_id: user1.id, chat_id: chat1.id)
message4 = Message.create(content: "dr. fauci ftw", user_id: user3.id, chat_id: chat1.id)
message5 = Message.create(content: "think I just got covid", user_id: user2.id, chat_id: chat1.id)
message6 = Message.create(content: "looks like the curve is flattening", user_id: user4.id, chat_id: chat2.id)
message7 = Message.create(content: "my neighbor just got it", user_id: user5.id, chat_id: chat2.id)
message8 = Message.create(content: "just copped a dope new n95", user_id: user4.id, chat_id: chat2.id)
message9 = Message.create(content: "oh great!", user_id: user6.id, chat_id: chat2.id)
message10 = Message.create(content: "1,000,000 new cases in Selbyville, DE!", user_id: user5.id, chat_id: chat2.id)
message11 = Message.create(content: "Fuck Carole Baskin", user_id: user6.id, chat_id: chat3.id)
message12 = Message.create(content: "Ehhh she is kinda hot tho", user_id: user7.id, chat_id: chat3.id)
message13 = Message.create(content: "Hey all you cool cats and kittens lmaoo", user_id: user6.id, chat_id: chat3.id)
message14 = Message.create(content: "lmaoooo", user_id: user8.id, chat_id: chat3.id)
message15 = Message.create(content: "def killed her husband", user_id: user1.id, chat_id: chat3.id)
message16 = Message.create(content: "never gonna quit juuling", user_id: user8.id, chat_id: chat4.id)
message17 = Message.create(content: "mango pods 4 lyfe", user_id: user9.id, chat_id: chat4.id)
message18 = Message.create(content: "juuling def helps covid symptoms", user_id: user10.id, chat_id: chat4.id)
message19 = Message.create(content: "new juul alert", user_id: user9.id, chat_id: chat4.id)
message20 = Message.create(content: "anyone wanna zoom/juul?", user_id: user8.id, chat_id: chat4.id)
message21 = Message.create(content: "coding is awesome", user_id: user1.id, chat_id: chat5.id)
message22 = Message.create(content: "it's so easy to learn", user_id: user7.id, chat_id: chat5.id)
message23 = Message.create(content: "self.I'm fucked", user_id: user8.id, chat_id: chat5.id)
message24 = Message.create(content: "just hit another bug ughhhh", user_id: user1.id, chat_id: chat5.id)
message25 = Message.create(content: "what time is standup today?", user_id: user7.id, chat_id: chat5.id)
message26 = Message.create(content: "mad hungover from ln", user_id: user10.id, chat_id: chat6.id)
message27 = Message.create(content: "the boiiii hot rod", user_id: user6.id, chat_id: chat6.id)
message28 = Message.create(content: "pull up the scion", user_id: user10.id, chat_id: chat6.id)
message29 = Message.create(content: "bass bumpin' in the hot rod", user_id: user2.id, chat_id: chat6.id)
message30 = Message.create(content: "mustang gang", user_id: user3.id, chat_id: chat6.id)
p "Messages were seeded!"

user_chat1 = UserChat.create(participant_id: user2.id, chat_id: chat1.id)
user_chat2 = UserChat.create(participant_id: user1.id, chat_id: chat2.id)
user_chat3 = UserChat.create(participant_id: user4.id, chat_id: chat2.id)
user_chat4 = UserChat.create(participant_id: user3.id, chat_id: chat3.id)
user_chat5 = UserChat.create(participant_id: user9.id, chat_id: chat1.id)

p "User Chats seeded boi"

p "."
p "."
p "."
p "DAIRY!!!" 
p "(everything was seeded yo)"