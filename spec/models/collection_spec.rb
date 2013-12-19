require 'spec_helper'

describe Collection do
  it {should have_valid(:name).when("Fall collection", "Awesome stuff")}
  it {should_not have_valid(:name).when(nil, "")}
end
