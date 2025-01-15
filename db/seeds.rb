Post.destroy_all
User.destroy_all

# Crear usuarios con diferentes roles
user1 = User.create(email: 'user1@example.com', password: 'password', role: 0)
user2 = User.create(email: 'user2@example.com', password: 'password', role: 1)
user3 = User.create(email: 'user3@example.com', password: 'password', role: 2)

# Crear posts para cada usuario
Post.create(title: 'Post de Usuario 1', content: 'Este es el primer post, creado por el Usuario 1.', user: user1)
Post.create(title: 'Post de Usuario 2', content: 'Este es el segundo post, creado por el Usuario 2.', user: user2)
Post.create(title: 'Post de Usuario 3', content: 'Este es el tercer post, creado por el Usuario 3.', user: user3)

