class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@artist_count = {}
    @@genre_count = {}
  
    attr_reader :name, :artist, :genre
  
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
  
      @@count += 1
      @@artists << artist
      @@genres << genre
      @@artist_count[artist] = @@artists.count(artist)
      @@genre_count[genre] = @@genres.count(genre)
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
  
    def self.genre_count
      @@genre_count
    end
  
    def self.artist_count
      @@artist_count
    end
  end
  