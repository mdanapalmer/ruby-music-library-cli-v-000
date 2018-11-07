require 'pry'
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
    if artist != nil
      self.artist = artist ||
    if genre != nil
      self.genre = genre
  end
end

  def genre
    @genre
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

def self.create(name)
  song = Song.new(name)
  song.save
  song
end

def artist=(artist)
  @artist = artist
  artist.add_song(self)
end

end
