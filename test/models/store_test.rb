require 'test_helper'

class StoreTest < ActiveSupport::TestCase

	self.use_instantiated_fixtures = true
 
 test "save_store" do
    store1 = Store.new
    assert store1.save
  end

end
