require 'pry-byebug'
require_relative 'models/customers.rb'
require_relative 'models/tickets.rb'
require_relative 'models/films.rb'
require_relative 'db/sql_runner.rb'

Customer.delete_all()

customer1 = Customer.new({
  "name" => "Tom",
  "funds" => 50
  })

customer1.save()

customer2 = Customer.new({
  "name" => "Jane",
  "funds" => 100
  })

  customer2.save()


##CONSOLE TESTS HERE

# Customer.delete_all() #works
#customer1.delete() #works
#p Customer.all() #works, returns array
# customer1.name = "blahblah"
# customer1.update() #works

binding.pry
nil
