require 'pry'

class Song

  attr_accessor :name



  def initialize(name)
    @name = name
    @@all = []
  end

  # def name
  #
  # end

  def self.all
    @@all
  end

  def self.destroy_all

  end

  def save

  end

  def self.create

  end


end
