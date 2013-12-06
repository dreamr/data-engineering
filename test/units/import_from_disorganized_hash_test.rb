require 'helper'
require_relative "../../app/models/concerns/import_from_disorganized_hash"

class IFDHHarness
  extend ImportFromDisorganizedHash
  attr_accessor :name, :age
end

describe ImportFromDisorganizedHash do
  subject { IFDHHarness }
  describe ".sanitize_attributes(hash)" do
    let(:hash) {{ 'harness name' => 'bob', 'harness age' => 12, 'nonharness price' => "0.00" }}
    it "must discard attrs not on the model" do
      subject.sanitize_attributes(hash).keys.wont_include :nonharness_price
    end
    it "must keep attrs that match the model_attr" do
      [:name, :age].each do |valid_key|
        subject.sanitize_attributes(hash).keys.must_include valid_key
      end
    end
  end
end
