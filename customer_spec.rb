require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Jim Morrison")
  end

  def test_customer_has_name
    assert_equal("Jim Morrison",@customer.name)
  end

end
