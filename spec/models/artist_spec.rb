require 'spec_helper'

describe Artist do
  it {should have_valid(:name).when("John Smith", "Harry Potter")}
  it {should_not have_valid(:name).when(nil,"")}

  it {should have_valid(:email).when("johnsmith@gmail.com", "awesome+@4chan.com")}
  it {should_not have_valid(:email).when(nil, "", "jo@ @@.com", "yoyahoo.com", "joe@yahoocom", "joe@yahoo.com.com")}

# Testing the relations
  it {should belong_to(:style)}
  it {should have_many(:artworks)}

  let(:artist) {FactoryGirl.create(:artist)}
  let(:style) {FactoryGirl.create(:style)}
  let(:artwork) {FactoryGirl.create(:artwork)}

  it 'calls upon the proper association when called' do
    artist.style_id = style.id
    artist.id = artwork.artist_id
    expect(artist.style.name).to eql("Expressionist")
    expect(artist.artworks.count).to eql(1)
  end
end
