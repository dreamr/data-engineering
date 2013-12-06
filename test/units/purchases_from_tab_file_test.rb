require 'helper'
require 'purchases_from_tab_file'

module PFTFHarness
  extend self
  def import(anything); self; end
  def map_child_data(objects); end
end

describe PurchasesFromTabFile do
  subject { PurchasesFromTabFile }
  let(:file) { File.open File.expand_path("../../fixtures/example_input.tab", __FILE__) }
  let(:objects) { [PFTFHarness] }
  let(:map_object) { PFTFHarness }
  describe ".call(file, objects, map_object)" do
    it "must return the right number of rows" do
      subject.call(file, objects, map_object).count.must_equal 4
    end
  end
end
