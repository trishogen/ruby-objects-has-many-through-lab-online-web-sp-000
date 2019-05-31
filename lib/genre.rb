class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @@all << self
  end

  def self.all
    @@all
  end

end
