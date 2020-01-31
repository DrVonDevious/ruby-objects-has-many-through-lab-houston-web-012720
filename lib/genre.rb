class Genre

  attr_accessor :name, :songs, :artists

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song| song.genre == self}
  end

  def artists
    arr = self.songs.map { |song| song.artist }
    arr.uniq
  end  

end

