class Sale < ActiveRecord::Base
  validates_numericality_of :customer_id, :only_integer=>true

  has_many :artworks
  belongs_to :customer
end
