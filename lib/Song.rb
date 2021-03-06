require 'pry'

class Song

   
    attr_accessor :name, :artist, :genre 

    @@all = []

    def initialize(name, artist = nil, genre = nil)
        @name = name
        self.artist = artist unless artist == nil
        self.genre = genre unless genre == nil
        
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

    def self.create(song_name)
        created_song = Song.new(song_name)
        created_song.save
        created_song
    end

    def artist=(artist)
        @artist = artist
        artist.add_song(self)
    end

    def genre=(genre)
        @genre = genre
        genre.songs << self unless genre.songs.include?(self)
    end 
    
    def self.find_by_name(name)
        self.all.find {|song| song.name == name}
    end

    def self.find_or_create_by_name(name)
        self.find_by_name(name) || self.create(name) 
    end

    def self.new_from_filename(file_name)
        artist_name, song_name, genre_name = file_name.chomp(".mp3").split(' - ')
        artist = Artist.find_or_create_by_name(artist_name) 
        genre = Genre.find_or_create_by_name(genre_name) 
        self.new(song_name, artist, genre) 
    end

    def self.create_from_filename(file_name)
        song = self.new_from_filename(file_name)
        song.save 
    end
end
