require 'spec_helper'

describe Style do
  it {should have_valid(:name).when("Baroque", "Postmodern")}
  it {should_not have_valid(:name).when(nil,"")}

  it {should have_many(:artists)}

  let(:artist) {FactoryGirl.create(:artist)}
  let(:style) {FactoryGirl.create(:style)}


  it 'calls upon the proper association when called' do
    style.id = artist.style_id
    expect(style.artists.count).to eql(1)
  end
end
