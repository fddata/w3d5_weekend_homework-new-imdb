require 'pry-byebug'
require_relative 'models/customers.rb'
require_relative 'models/tickets.rb'
require_relative 'models/films.rb'
require_relative 'db/sql_runner.rb'


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




binding.pry
nil
