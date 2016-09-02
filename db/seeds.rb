# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{ name: 'Admin', lastname:'Cumplo', email:'admin@cumplo.cl',admin: true, password: '12345678'},
                     { name: 'Felipe', lastname:'Navarro', email:'a@a.com',password: '12345678'},
                     { name: 'Pablo', lastname:'Guitierrez', email:'b@b.com',password: '12345678'},
                     { name: 'Sebastian', lastname:'Campos', email:'c@c.com',password: '12345678'},
                     { name: 'Camilo', lastname:'Mella', email:'d@d.com',password: '12345678'},
                     { name: 'Felipe', lastname:'Sanhueza', email:'abc@c.com',password: '12345678'},
                     { name: 'Mario', lastname:'Contreras', email:'cd@c.com',password: '12345678'}])

tickets = Ticket.create([{ issue: 'Page down', description:'Task Admin Page down',priority:3, user_id:1 },
                         { issue: 'Email problem', description:'mail server down',priority:3, user_id:1 },
                         { issue: 'display problem', description:'problem with responsive', priority:2, user_id:2 },
                         { issue: 'Problem with scanner', description:'problem',priority:1, user_id:2 },
                         { issue: 'issue1', description:'problem',user_id:2 },
                         { issue: 'issue2', description:'problem',priority:1, user_id:2 },
                         { issue: 'issue3', description:'problem',priority:2, user_id:3 },
                         { issue: 'issue4', description:'problem',priority:2, user_id:3 },
                         { issue: 'issue5', description:'problem', user_id:3 }
                        ])