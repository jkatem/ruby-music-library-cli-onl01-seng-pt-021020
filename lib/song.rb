require 'pry'

class Song

  attr_accessor :name



  def initialize(name)
    @name = name
    @@all = []
  end

  def self.all
    @@all
    binding.pry
  end

  def self.destroy_all

  end

  def save

  end

  def self.create

  end


end
