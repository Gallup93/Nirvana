class AddAttributesToTracks < ActiveRecord::Migration[5.1]
  def change
    add_column :tracks, :acoustic, :boolean
    add_column :tracks, :base_version, :boolean
    add_column :tracks, :unreleased, :boolean
    add_column :tracks, :spotify_id, :string
  end
end
