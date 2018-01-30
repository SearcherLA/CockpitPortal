class Customer < ApplicationRecord
  has_many :solution_architect ,:dependent => :destroy
end
