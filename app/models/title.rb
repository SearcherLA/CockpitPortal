class Title < ApplicationRecord
  has_many :customer_contact ,:dependent => :destroy
end
