class Owner
  # code goes here
  attr_reader :species #can't change species
  attr_accessor :name, :pets
  @@owners = []

  def initialize(name)
   @name = name
   @@owners << self
   @species = "human"
   @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
  @@owners
end

def self.reset_all
  self.all.clear
end

def self.count
  @@owners.length
end

def say_species
    "I am a #{@species}."
end

def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
end

def buy_cat(name)
  @pets[:cats] << Cat.new(name)
end

def buy_dog(name)
  @pets[:dogs] << Dog.new(name)
end

def walk_dogs
  @pets[:dogs].each {|dog| dog.mood = "happy"}
end

def play_with_cats
  @pets[:cats].each {|cat| cat.mood = "happy"}
end

def feed_fish
  @pets[:fishes].each {|fish| fish.mood = "happy"}
end

def sell_pets
   @pets.each do |type, pets |
     pets.map { |pet| pet.mood = "nervous" }
   end
   @pets.clear
 end

 def list_pets
   "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
 end

end
