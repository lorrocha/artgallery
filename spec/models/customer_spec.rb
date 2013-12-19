require 'spec_helper'

describe Customer do
  it {should have_valid(:name).when("John Smith", "Harry Potter")}
  it {should_not have_valid(:name).when(nil,"")}

  it {should have_valid(:email).when("johnsmith@gmail.com", "awesome+@4chan.com")}
  it {should_not have_valid(:email).when(nil, "", "jo@ @@.com", "yoyahoo.com", "joe@yahoocom", "joe@yahoo.com.com")}

#testing relations
  let(:sale) {FactoryGirl.create(:sale)}
  let(:customer) {FactoryGirl.create(:customer)}

  it {should have_many(:sales)}

  it 'should be able to call upon relations' do
    customer.id = sale.customer_id
    expect(customer.sales.first).to eql(sale)
  end
end
