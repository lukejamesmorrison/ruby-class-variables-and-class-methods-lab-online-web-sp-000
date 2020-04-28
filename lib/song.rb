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
   @@artists.uniq
  end
  
  def self.genres
   @@genres.uniq
  end
  
  def self.artist_count
    artist_hash = Hash.new
    
    @@artists.each! do |artist|
      if artist_hash[artist]
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
  end
  
  def self.genre_count
    @@genres.tally
  end
end