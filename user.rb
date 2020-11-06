require 'date'

class User

    attr_reader :name, :date_of_birth

    def initialize(name, date_of_birth)
        @name = name
        @date_of_birth = date_of_birth
    end

    # Returns an Integer representing the user’s current age
    def age
        @now = Date.today
        @age = @now.year - @date_of_birth.year - ((@now.month > @date_of_birth.month || (@now.month == @date_of_birth.month && @now.day >= @date_of_birth.day)) ? 0 : 1)
    end

    # Returns a Date object for the user's next birthday
    def next_birthday
        
    end
end

tests = [
   Date.new(1986, 1, 1),
   Date.new(1988, Date.today.month, Date.today.day),
   Date.new(1990, 12, 30),
   Date.new(1992, 2, 29),
]
puts "====== ages ======"
tests.each do |date|
    puts "#{date} => #{User.new("Test", date).age}"
end

puts "====== birthdays ======"
tests.each do |date|
    puts "#{date} => #{User.new("Test", date).next_birthday}"
end