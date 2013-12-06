class Merchant < ActiveRecord::Base
  extend ImportFromDisorganizedHash
  attr_accessible :address, :name
end
