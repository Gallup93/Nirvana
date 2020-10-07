class Track < ApplicationRecord
  validates :name, presence: true
  validates :album_name, presence: true
  validates :run_time, presence: true
  validates :spotify_id, presence: true
  validates :studio, inclusion: { in: [ true, false ] }
  validates :live, inclusion: { in: [ true, false ] }
  validates :cover, inclusion: { in: [ true, false ] }
  validates :acoustic, inclusion: { in: [ true, false ] }
  validates :base_version, inclusion: { in: [ true, false ] }
  validates :unreleased, inclusion: { in: [true, false ] }
end
