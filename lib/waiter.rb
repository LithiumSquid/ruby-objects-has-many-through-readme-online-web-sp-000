class Waiter
  attr_accessor :customer, :meal
  attr_reader :name, :experience
  
  @@all = []

def initialize(name, experience)
  @name = name
  @experience = experience
  @@all << self
end

def self.all
  @@all
end

end