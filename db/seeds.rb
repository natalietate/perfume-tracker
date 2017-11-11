# Initiate the data by running 'rake db:seed'
# in the command line after running migrations (rake db:migrate)

User.destroy_all
user = User.create(username: 'tater')
