class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    total = self.songs.count
    if total == 1
      "#{total} song"
    else
      "#{total} songs"
    end
  end
end
