class Artist

  attr_accessor :name, :songs, :genres

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end 

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    arr = self.songs.map { |song| song.genre }
    arr.uniq
  end  

end 

