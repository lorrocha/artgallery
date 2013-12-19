require 'spec_helper'

describe Artcollection do
  it {should have_valid(:collection_id).when(1,2,2345)}
  it {should_not have_valid(:collection_id).when(nil,'','sfefe')}

  it {should have_valid(:artwork_id).when(1,2,2345)}
  it {should_not have_valid(:artwork_id).when(nil,'','sfefe')}

# testing relations

  it {should belong_to(:collection)}
  it {should belong_to(:artwork)}
end
