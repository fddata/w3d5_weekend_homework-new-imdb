require 'pry-byebug'
require_relative 'models/customers.rb'
require_relative 'models/tickets.rb'
require_relative 'models/films.rb'
require_relative 'db/sql_runner.rb'

Customer.delete_all()
Film.delete_all()

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


film1 = Film.new({
  "title" => 'Jaws',
  'price' => 10
  })
  film1.save()

film2 = Film.new({
  'title' => 'Star Wars',
  'price' => 15
  })
film2.save()



##CONSOLE TESTS HERE

# Customer.delete_all() #works
#customer1.delete() #works
#p Customer.all() #works, returns array
# customer1.name = "blahblah"
# customer1.funds = 15
# customer1.update() #works
# film1.delete #works
# film1.title = "BLAH"
# film1.price = 60
# film1.update() #works


binding.pry
nil
