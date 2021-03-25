class Artist
  attr_accessor :name

    @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def add_song(song)
    @songs << song
  end
  
  # def save
  #   @@all << self
  # end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.each do |song|
      if song.artist == self
        @songs << song 
      end
    end
    @songs 
  end 

  def self.find_by_name(artist_name)
    found_artist = self.all.find do |artist|
      artist.name == artist_name
    end
  end

  def self.create_by_name(artist_name)
    new_artist = Artist.new(artist_name)
    new_artist.save
    new_artist
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name || self.new(name)}
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end 
  end
  
end