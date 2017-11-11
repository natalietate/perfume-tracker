# Initiate the data by running 'rake db:seed'
# in the command line after running migrations (rake db:migrate)

User.destroy_all
User.create(username: 'tater' )
User.create(username: 'natalie' )
User.create(username: 'perfume' )
User.create(username: 'test' )
