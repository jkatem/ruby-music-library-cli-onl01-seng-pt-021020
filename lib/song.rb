
class Song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name

  end

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
