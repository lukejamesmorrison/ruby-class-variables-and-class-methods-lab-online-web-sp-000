class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    # if !@@genres.include?(genre)
      @@genres << genre
    # end
    
    # if !@@artists.include?(artist)
      @@artists << artist
    # end
  end
  
  def self.count
    @@count
  end
  
  def self.artists
   @@artists.filter {|a| a}
  end
  
  def self.genres
   @@genres.filter {|a| a}
  end
  
  def self.artist_count
    @@artists.count
  end
  
  def self.genre_count
    @@genres.count
  end
end