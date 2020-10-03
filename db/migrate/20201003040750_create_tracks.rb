class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :album_name
      t.float :run_time
      t.boolean :studio
      t.boolean :live
      t.boolean :cover
    end
  end
end
