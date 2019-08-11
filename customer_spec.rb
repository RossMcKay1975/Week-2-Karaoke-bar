require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')

class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Jim Morrison")
    @customer2 = Customer.new("Keith Moon")
  end

  def test_customer_has_name
    assert_equal("Jim Morrison",@customer1.name)
  end

end
