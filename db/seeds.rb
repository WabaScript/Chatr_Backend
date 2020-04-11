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

user1 = User.create(first_name: "ricky", last_name: "wab", email: "ricky@rick.r", password: "1", username: "wabox", pro_pic: "https://images-na.ssl-images-amazon.com/images/I/41WDJyc%2Bj6L._SY355_.jpg")
user2 = User.create(first_name: "jim", last_name: "Bagz", email: "jim@jim.j", password: "1", username: "jimmyeatworld", pro_pic: "https://vignette.wikia.nocookie.net/jimmyneutron/images/5/57/Jimmy_Neutron.png/revision/latest?cb=20180219044703")
# user3 = User.create(first_name: "ricky", last_name: "3. Black Tube User", email: 5, password: 
# user4 = User.create(first_name: "ricky", last_name: "4. Black Crop Shirt", email: 1, password: 
# user5 = User.create(first_name: "ricky", last_name: "5. Black/Gray Top", email: 4, password: 

p "Users were seeded!"
chat1 = Chat.create(topic: "corona", owner_id: user1.id)
chat2 = Chat.create(topic: "covid", owner_id: user2.id)
# chat3 = Chat.create(first_name: "ricky", last_name: "3. Black Tube chat", email: 5, password: 
# chat4 = Chat.create(first_name: "ricky", last_name: "4. Black Crop Shirt", email: 1, password: 
# chat5 = Chat.create(first_name: "ricky", last_name: "5. Black/Gray Top", email: 4, password: 
p "Chats were seeded!"

message1 = Message.create(content: "dude i just dont know if i can stay inside another day", user_id: user1.id, chat_id: chat1.id)
message2 = Message.create(content: "new covid sample found", user_id: user2.id, chat_id: chat2.id)
message3 = Message.create(content: "oh great!", user_id: user1.id, chat_id: chat2.id)
p "Messages were seeded!"

user_chat1 = UserChat.create(participant_id: user2.id, chat_id: chat1.id)
user_chat2 = UserChat.create(participant_id: user1.id, chat_id: chat2.id)
p "User Chats seeded boi"

p "."
p "."
p "."
p "DAIRY!!!" 
p "(everything was seeded yo)"