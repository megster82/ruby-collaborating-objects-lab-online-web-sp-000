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
    @songs << song 
  end 
  
  def self.find_by_name(name)
    @@all.find{|x| x.name == name
  end
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
