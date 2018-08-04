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
  "funds" => 100
  })
customer1.save()

customer2 = Customer.new({
  "name" => "Jane",
  "funds" => 100
  })
customer2.save()

customer3 = Customer.new({
  "name" => "Simon",
  "funds" => 100
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

customer1.buy_ticket(film1) #works
customer2.buy_ticket(film1) #works
customer2.buy_ticket(film2) #works
customer3.buy_ticket(film1) #works
customer3.buy_ticket(film2) #works
customer3.buy_ticket(film2) #works





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

p "customer 1 has bought #{customer1.count_tickets()} tickets"
p "customer 2 has bought #{customer2.count_tickets()} tickets"
p "customer 3 has bought #{customer3.count_tickets()} tickets"


p " film 1 has sold #{film1.count_tickets()} tickets"
p " film 2 has sold #{film2.count_tickets()} tickets"


binding.pry
nil
