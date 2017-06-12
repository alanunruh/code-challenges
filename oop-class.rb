class Dog
  attr_accessor :type, :name, :age

  def initialize(type, name, age)
    @type = type
    @name = name
    @age = age
  end

  def output_dog_details
    puts "My name is #{@name}, I'm a #{@age} year old #{@type}."
  end

end

dog = Dog.new(:Poodle, :Duke, 4)
dog.type = :Bulldog
dog.output_dog_details