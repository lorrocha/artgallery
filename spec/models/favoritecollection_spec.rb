require 'spec_helper'

describe Favoritecollection do
  it {should have_valid(:customer_id).when(1,2,3,102)}
  it {should_not have_valid(:customer_id).when(nil,'','weord')}

  it {should have_valid(:collection_id).when(1,2,3,230)}
  it {should_not have_valid(:collection_id).when(nil, '', 'word')}

  it {should belong_to(:collection)}
  it {should belong_to(:customer)}
end
