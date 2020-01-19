class Genre 
  extend Concerns::Findable
  
  attr_accessor :name 
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
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
  
  
  def self.create(genre)
  new(genre).tap {|genre| genre.save}
  end 
  
  def artists 
    songs.map {|song| song.artist}.uniq
  end 
  
end 