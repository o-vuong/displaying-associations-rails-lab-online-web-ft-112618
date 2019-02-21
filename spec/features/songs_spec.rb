require 'rails_helper'

describe "songs", type:  :feature do
  before do
    Artist.destroy_all
    Song.destroy_all
    @artist = Artist.create!(name: "Daft Punk")
    @song = @artist.songs.create!(title: "The Grid")
  end



  it "links to the artist" do
    visit song_path(@song)
    expect(page).to have_link("Daft Punk", href: artist_path(@artist))
  end
end
