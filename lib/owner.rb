class Owner

  attr_reader :name, :species
  attr_accessor :cats, :dogs

  @@all = []

  def initialize(name)
    @species = "human"
    @name = name
    @cats = []
    @dogs = []
    @@all << self
  end

  def say_species()
    return "I am a #{@species}."
  end

  def self.all()
    return @@all
  end

  def self.count()
    return @@all.size()
  end

  def self.reset_all()
    @@all.clear()
  end

  def buy_cat( name )
    Cat.new( name, self )  
  end

  def buy_dog( name )
    Dog.new( name, self )  
  end
  
  def walk_dogs()
    for el in @dogs
      el.mood = "happy"
    end
  end
  
  def feed_cats()
    for el in @cats
      el.mood = "happy"
    end
  end

  def sell_pets()
    for el in @dogs
      el.owner = nil
      el.mood = "nervous"
    end
    for el in @cats
      el.owner = nil
      el.mood = "nervous"
    end
    @cats.clear()
    @dogs.clear()
  end

  def list_pets()
    return "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end
end