require "pry"
class Song 
  
  attr_accessor :artist, :name 
    
    @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end

 
  def self.all 
    @@all 
  end  
  
  def artist=(artist)
      @artist = artist 
      artist.songs << self
  end
   
   
  def self.new_by_filename(file_name)
      songs = file_name.split(" - ")[1]
      artist = file_name.split(" - ")[0]
      songs = self.new(songs)
      # binding.pry
      songs.artist_name = artist
      songs
  end
  
  def artist_name=(name)
  self.artist= Artist.find_or_create_by_name(name)
  self.artist.add_song(self) 
  end 
  
end 