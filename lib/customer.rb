class Customer
  attr_accessor :meal, :waiter
  attr_reader :name, :age
  
  @@all = []
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
  end
  
  def meals
    Meal.customer.all
end
  
  def self.waiters
    waiters.all
  end
  
end