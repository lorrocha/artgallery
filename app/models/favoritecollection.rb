class Favoritecollection < ActiveRecord::Base
  validates_numericality_of :collection_id, :only_integer=>true
  validates_numericality_of :customer_id, :only_integer=>true

  belongs_to :customer
  belongs_to :collection
end
