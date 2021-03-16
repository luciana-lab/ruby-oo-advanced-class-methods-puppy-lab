require 'pry'
class Dog
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        self.save
        
    end

    #a class method returns all dog instances
    def self.all
        @@all
        
    end

    #a class method that empties the @@all array of all existing dogs
    def self.clear_all
        @@all.clear
    end

    #a class method that puts out the name of each dog to the terminal
    def self.print_all
        @@all.each {|n| puts "#{n.name}"}
    end

    def save
        @@all << self
    end
end