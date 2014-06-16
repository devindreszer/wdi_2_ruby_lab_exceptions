# create my own exception class

class PersonInvalidNameError < StandardError
end

class PersonInvalidAgeError < StandardError
end

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def valid_name
    raise PersonInvalidNameError.new("Invalid name") unless (name.length > 1 && name.length < 10)
  end

  def valid_age
    raise PersonInvalidAgeError.new("Invalid age") unless (age > 0 && age < 115)
  end

end

begin
  tom = Person.new('tom', 57)
  tom.valid_name
  tom.valid_age
  puts "Name and age are valid"
rescue PersonInvalidAgeError => e
  puts e.message
rescue PersonInvalidNameError => e
  puts e.message
end

begin
  ed = Person.new('ed', 116)
  ed.valid_name
  ed.valid_age
  puts "Name and age are valid"
rescue PersonInvalidAgeError => e
  puts e.message
rescue PersonInvalidNameError => e
  puts e.message
end

begin
  michaelangelo = Person.new('michaelangelo', 30)
  michaelangelo.valid_name
  michaelangelo.valid_age
  puts "Name and age are valid"
rescue PersonInvalidAgeError => e
  puts e.message
rescue PersonInvalidNameError => e
  puts e.message
end
