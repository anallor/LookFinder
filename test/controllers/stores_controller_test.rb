require 'test_helper'

class StoresControllerTest < ActionController::TestCase

	setup do
    @store = stores(:one)
  end


  test "should get index" do
   get :index
   assert_response :success
   assert_not_nil assigns(:stores)
  end

end
