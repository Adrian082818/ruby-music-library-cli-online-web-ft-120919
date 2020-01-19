class Song 
  
  
  attr_accessor :name 
  attr_reader :artist, :genre 
  
  @@all = []
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist = artist if artist 
    self.genre = genre if genre
    # save
  end
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.destroy_all
    @@all.clear 
  end 
  
  def artist=(song)
    @artist = song 
    artist.add_song(self)
  end 
  
  def genre=(song)
    @genre = song 
    # @songs << self 
    if !genre.songs.include?(self)
    genre.songs << self 
    end 
  end 

  
  def self.create(song)
  song = self.new(song)
  song.save
  song 
  end 
  
  def self.find_by_name(name)
    all.detect {|song| song.name == name } 
  end 
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
  # song = self.find_by_name(name)
  # if song 
  #   song 
  # else 
  #   self.create(name)
  # end 
end 

def self.new_from_filename(filename)
  artist, song = filenane 
end 
  
  
end 