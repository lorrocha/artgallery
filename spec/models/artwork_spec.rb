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
  let(:sale) {FactoryGirl.create(:sale)}
  let(:coll_1) {FactoryGirl.create(:collection)}
  let(:coll_2) {FactoryGirl.create(:collection)}

  it {should belong_to(:type)}
  it {should belong_to(:artist)}
  it {should belong_to(:sale)}
  it {should have_many(:artcollections)}
  it {should have_many(:collections)}


  it 'should call upon its relations' do
    artwork.type_id = type.id
    artwork.artist_id = artist.id
    artwork.sale_id = sale.id

    expect(artwork.type.name).to eql("Statue")
    expect(artwork.artist.name).to eql("Harry Potter")
    expect(artwork.sale).to eql(sale)
  end

  it 'should have many collections' do
    Artcollection.create(collection_id:coll_1.id,artwork_id:artwork.id)
    Artcollection.create(collection_id:coll_2.id,artwork_id:artwork.id)

    expect(artwork.collections.count).to eql(2)
  end
end
