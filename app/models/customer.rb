class Customer < ActiveRecord::Base
  validates_presence_of :name
  validates_format_of :email,:with =>/\A[^@ ,\/\\]+@[^@ ,\/\\\.]+\.[a-zA-Z]+\z/

  has_many :sales
end
