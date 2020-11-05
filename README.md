# CharlieHR Junior Dev Tech Test

## Instructions
The code below is a User class that takes a name and date of birth.

Your task is to implement the age and next_birthday methods such that they return the correct
result for today.

Spend at most 45 minutes on the task. The bonus question is hard and you can still pass without
making it work.

If you would prefer to use a different programming language you're very welcome to! Please
provide an equivalent User class and test suite along with instructions for how to run it.

```rb
require 'date'
class User
 attr_reader :name, :date_of_birth
 def initialize(name, date_of_birth)
 @name = name
 @date_of_birth = date_of_birth
 end
 # Returns an Integer representing the user’s current age
 def age
 ...
 end
 # Returns a Date object for the user's next birthday
 def next_birthday
 ...
 end
end
tests = [
 Date.new(1986, 1, 1),
 Date.new(1988, Date.today.month, Date.today.day),
 Date.new(1990, 12, 30),
]
puts "====== ages ======"
tests.each do |date|
 puts "#{date} => #{User.new("Test", date).age}"
end
puts "====== birthdays ======"
tests.each do |date|
 puts "#{date} => #{User.new("Test", date).next_birthday}"
end
```

## Run the tests

```
ruby user.rb
```