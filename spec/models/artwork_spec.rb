require 'spec_helper'

describe Artwork do
  it {should have_valid(:name).when("Mona Lisa")}
  it {should_not have_valid(:name).when(nil, "")}

  it {should have_valid(:artist_id).when(1,2)}
  it {should_not have_valid(:artist_id).when('', "Pablo", nil)}

# Testing relations
  let(:artwork) {FactoryGirl.create(:artwork)}
  let(:type) {FactoryGirl.create(:type)}
  let(:artist) {FactoryGirl.create(:artist)}

  it {should belong_to(:type)}
  it {should belong_to(:artist)}

  it 'should call upon its relations' do
    artwork.type_id = type.id
    artwork.artist_id = artist.id
    expect(artwork.type.name).to eql("Statue")
    expect(artwork.artist.name).to eql("Harry Potter")
  end
end