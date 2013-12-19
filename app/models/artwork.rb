class Artwork < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :artist_id, :only_integer=>true

  belongs_to :type
  belongs_to :artist
  belongs_to :sale
end
