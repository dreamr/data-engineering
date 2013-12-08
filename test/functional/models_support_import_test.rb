require 'rails_helper'

describe "Models that should support importing via tab files" do
  subject { [Item, Purchaser, Purchase, Merchant] }
  it { subject.each {|model| model.must_respond_to(:import) } }
end

