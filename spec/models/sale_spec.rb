require 'spec_helper'

describe Sale do
  it {should have_valid(:customer_id).when(1,2,3)}
  it {should_not have_valid(:customer_id).when(nil, '', "heey")}

#Testing the relations
  let(:sale) {FactoryGirl.build(:sale)}
  let(:artwork) {FactoryGirl.create(:artwork)}
  let(:customer) {FactoryGirl.create(:customer)}

  it {should have_many(:artworks)}
  it {should belong_to(:customer)}

  it 'should be able to call relations when called' do
    sale.id = artwork.sale_id
    sale.customer_id = customer.id
    expect(sale.artworks.count).to eql(1)
    expect(sale.customer.name).to eql("Scrooge")
  end

end
