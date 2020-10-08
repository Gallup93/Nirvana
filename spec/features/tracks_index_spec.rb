require 'rails_helper'

RSpec.describe 'tracks index', type: :feature do
  before(:all) do
    tracks_text = File.read('csv_files/tracks.csv')
    tracks = CSV.parse(tracks_text, :headers => true)
    tracks.each do |row|
      Track.create!(row.to_hash)
    end
  end

  after(:all) do
    Track.delete_all
  end
  
  it "can list all tracks" do
    visit "/tracks"

    expect(page).to have_content("All Tracks")
    expect(Track.all.count).to eq(91)

    within ".all-tracks" do
      expect(page).to have_content("Blew")
      expect(page).to have_content("D-7")
    end
  end
end
