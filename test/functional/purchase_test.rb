require 'rails_helper'

describe Purchase do
  subject { Purchase }
 
 # minitest-shoulda-rails is out of date and needs to be updated via pr
 # it { must belong_to? :item      }
 # it { must belong_to? :purchaser }
 # it { must belong_to? :merchant  }

  describe ".map_child_data(*objects)" do
    subject { Purchase.new }
    it { subject.must_respond_to(:map_child_data) }
  end
end
