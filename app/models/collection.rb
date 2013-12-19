class Collection < ActiveRecord::Base
  validates_presence_of :name

  has_many :favoritecollections
  has_many :customers, :through=>:favoritecollections
end
