class Team < ApplicationRecord
  has_many :solution_architect ,:dependent => :destroy
end
