require 'pry'

class Artist

    attr_accessor :name, :songs 

    @@all = []

    def initialize(artist_name)
        @name = artist_name
        @songs = []
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

    def self.create(artist_name)
        created_artist = Artist.new(artist_name)
        created_artist.save
        created_artist
    end
    
end