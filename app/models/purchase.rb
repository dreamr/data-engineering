class Purchase < ActiveRecord::Base
  extend ImportFromDisorganizedHash

  attr_accessible :count

  belongs_to :item
  belongs_to :purchaser
  belongs_to :merchant

  # used to tie records together on import
  def map_child_data(purchaser, item, merchant)
    self.purchaser  = purchaser
    self.item       = item
    self.merchant   = merchant
    self.save
    self
  end

  # SUM ALL THE THINGS!!!
  def self.gross_sales(purchases)
    purchases.sum {|p| p.item.price.to_f*p.count.to_f }
  end
end
