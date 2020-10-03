class Track < ApplicationRecord
  validates :name, presence: true
  validates :album_name, presence: true
  validates :run_time, presence: true
  validates :studio, presence: true
  validates :live, presence: true
  validates :cover, presence: true
end
