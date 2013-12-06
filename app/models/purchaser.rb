class Purchaser < ActiveRecord::Base
  extend ImportFromDisorganizedHash

  attr_accessible :name

end
