# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# puts 'EMPTY THE MONGODB DATABASE'
# Mongoid.master.collections.reject { |c| c.name =~ /^system/}.each(&:drop)
puts 'SETTING UP DEFAULT ADMIN LOGIN'
admin = Admin.create! :name => 'First Admin', :email => 'admin@streamaweb.info', :password => 'passwd', :password_confirmation => 'passwd'
puts 'Admin created: ' << admin.email
