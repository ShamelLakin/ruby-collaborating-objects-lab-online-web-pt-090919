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
    artist_name = file.split(" - ")[0]
    song_name = file.split(" - ")[1]
    song = Song.new(song_name)
    song.artist_name = artist_name
    song
      # songs = Song.new(file_name)
      # songs = file_name.split(" - ")[1]
      # artist = file_name.split(" -  ")[0]
      # songs = self.new(file_name)
      # songs.artist = artist
      # songs
  end 
  
  # def artist_name=(name)
  #   artist = Artist.find_or_create_by_name(name)
  #   self.artist = artist
  #   artist.add_song(self)
  # end
  
  def artist_name=(name)
  self.artist= Artist.find_or_create_by_name(name)
  self.artist.add_song(self) 
  end 
  
end 