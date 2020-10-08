class Track < ApplicationRecord
  validates :name, presence: true
  validates :album_name, presence: true
  validates :run_time, presence: true
  validates :spotify_id, presence: true

  def self.all_tracks
    Track.all
  end

end
