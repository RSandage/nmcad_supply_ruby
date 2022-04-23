require "test_helper"

class SuppliesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @supply = Supply.new(name: " ")
  end 

  test "name should be present" do
    assert_not @supply.valid?
  end

  test "name should not be too short" do
    @supply.name = "X"
    assert_not @supply.valid?
  end

  test "name should not be too long" do
    @supply.name = "abcdefghijklmnopqrstuvwxyz"
    assert_not @supply.valid?
  end
end
