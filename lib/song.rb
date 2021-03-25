class Song

  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all
    @@all
  end
    
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name 
    end 
  end
 
  def self.new_by_filename(file_name)
    artist = file_name.split(" - ")[0]
    song_name = file_name.split(" - ")[1]
    song = self.new(song_name)
    song.artist_name = artist
    song
  end

  
end 
