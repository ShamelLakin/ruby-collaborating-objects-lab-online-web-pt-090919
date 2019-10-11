class Artist 
  
  attr_accessor :name, :songs
  
    @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    @songs = []
  end 
  
  def self.all 
     @@all 
  end 
  
  def songs 
    @songs
  end 
  
  def add_song(song) 
      songs << song
    # song = Song.new(name)
    # @songs << song
    # @songs
  end 
  
  def self.find_or_create_by_name(name)
      self.all.find {|artist| artist.name == name} || artist = Artist.new(name)
  end 
  
  def print_songs
    songs.each {|song| puts song.name}
  end 
   
end