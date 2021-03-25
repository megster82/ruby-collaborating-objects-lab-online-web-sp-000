class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @artist = artist
    
  end
  
  def self.all
    @@all 
  end 
  
  def self.new_by_filename(filename)
    song = self.new 
    song.title = filename.split(" - ")[1]
    song
  end
  
end