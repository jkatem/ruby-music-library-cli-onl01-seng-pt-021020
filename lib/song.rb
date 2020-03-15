
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

end
