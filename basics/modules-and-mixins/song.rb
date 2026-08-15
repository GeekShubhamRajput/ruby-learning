# Multiple Declaration for Same Module

require_relative "low_quality"
require_relative "high_quality"

class Song
  include Downloadable
end

song = Song.new
p song.download_low_quality_song
p song.download_high_quality_song
