require 'pry'

class Genre

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all.clear
    end

    def save
        @@all << self
    end

    def self.create(genre_name)
        created_genre = Genre.new(genre_name)
        created_genre.save
        created_genre
    end

end