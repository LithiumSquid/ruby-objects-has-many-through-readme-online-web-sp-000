class Customer
  attr_accessor :meal, :waiter
  attr_reader :name, :age
  
  @@all = []
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
    @meal = []
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
    @meal << self
  end
  
  def meals
    @meal
end
  
  def self.waiters
    waiters.all
  end
  
end