# An Album class stores the list of songs
class Album
  include Enumerable
  
  # An array of songs. Each song should be a string.
  attr_reader :songs

  # Instantiates an Album with no starter songs 
  def initialize
    @songs = []
  end

  # Add a song to the album's song collection
  def add_song(song)
    songs << song
  end

  # Iterate over each song on the album
  def each
    songs.each { |song| yield song }
  end
end
