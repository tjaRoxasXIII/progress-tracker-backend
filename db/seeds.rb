# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    users = User.create([{name: 'James', email: 'fakeJames@fake.com', password_digest: 'testPassword'}, {name: 'Kyle', email: 'fakeKyle@fake.com', password_digest: 'testPassword'}, {name: 'Joe', email: 'fakeJoe@fake.com', password_digest: 'testPassword'}])
    
    Goal.create(user_id: 1, title: 'Work Out', frequency: 'daily', precent_complete: 0, is_complete: false, start_date: '5/1/2021', end_date: '31/12/2021')
