class Artist < ActiveRecord::Base
  validates_presence_of :name
  validates_format_of :email,:with =>/\A[^@ ,\/\\]+@[^@ ,\/\\\.]+\.[a-zA-Z]+\z/

  belongs_to :style
  has_many :artworks
end
