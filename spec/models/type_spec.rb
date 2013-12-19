require 'spec_helper'

describe Type do
  it {should have_valid(:name).when("Statue", "Painting", "Collage")}
  it {should_not have_valid(:name).when(nil, "")}

#testing relations
  it {should have_many(:artworks)}

  let(:artwork) {FactoryGirl.create(:artwork)}
  let(:type) {FactoryGirl.create(:type)}

  it 'should call upon its relations' do
    type.id = artwork.type_id
    expect(type.artworks.count).to eql(1)
  end

end
