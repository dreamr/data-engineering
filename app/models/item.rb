class Item < ActiveRecord::Base
  extend ImportFromDisorganizedHash
  attr_accessible :description, :price

end
