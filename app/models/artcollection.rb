class Artcollection < ActiveRecord::Base
  validates_numericality_of :collection_id,:only_integer=>true
  validates_numericality_of :artwork_id,:only_integer=>true

  belongs_to :collection
  belongs_to :artwork
end
