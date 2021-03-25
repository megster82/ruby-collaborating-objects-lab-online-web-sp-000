class Artist
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name
    @song = []
  end
  
  def self.all
    @@all
  end 
  
  def add_song(song)
    song.artist = song 
  end 
  
  def songs
    @songs
  end
  
  def self.find_or_create_by_name(name)
    
end 