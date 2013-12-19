require 'spec_helper'

describe Collection do
  it {should have_valid(:name).when("Fall collection", "Awesome stuff")}
  it {should_not have_valid(:name).when(nil, "")}

  it {should have_many(:favoritecollections)}
  it {should have_many(:customers)}
  it {should have_many(:artcollections)}
  it {should have_many(:artworks)}

  let(:collection) {FactoryGirl.create(:collection)}
  let(:art1) {FactoryGirl.create(:artwork)}
  let(:art2) {FactoryGirl.create(:artwork)}
  let(:cust1) {FactoryGirl.create(:customer)}
  let(:cust2) {FactoryGirl.create(:customer)}

  it 'should have many artworks' do
    Artcollection.create(collection_id:collection.id,artwork_id:art1.id)
    Artcollection.create(collection_id:collection.id,artwork_id:art2.id)

    expect(collection.artworks.count).to eql(2)
  end

  it 'should have many customers' do
    Favoritecollection.create(collection_id:collection.id,customer_id:cust1.id)
    Favoritecollection.create(collection_id:collection.id,customer_id:cust2.id)

    expect(collection.customers.count).to eql(2)
  end
end
