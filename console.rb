require 'pry-byebug'
require_relative 'models/customers.rb'
require_relative 'models/tickets.rb'
require_relative 'models/films.rb'
require_relative 'db/sql_runner.rb'

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()

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

customer3 = Customer.new({
  "name" => "Simon",
  "funds" => 1000
  })
customer3.save()



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

ticket1 = Ticket.new({
  'film_id' => film1.id,
  'customer_id' => customer1.id
  })
ticket1.save()

ticket2 = Ticket.new({
  'film_id' => film2.id,
  'customer_id' => customer1.id
  })
ticket2.save()

ticket3 = Ticket.new({
  'film_id' => film2.id,
  'customer_id' => customer2.id
  })
ticket3.save()





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
# Ticket.delete_all() #works
# ticket1.delete() #works
# ticket1.film_id = 1000
# ticket1.update() #works
# p customer1.films() #works
# p film2.customers() #works
# customer1.decrease_funds(film1) #works
# customer2.decrease_funds(film2) #works
# customer2.decrease_funds(film1) #works
customer3.buy_ticket(film1) #works


binding.pry
nil
