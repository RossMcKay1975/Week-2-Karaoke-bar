require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../song')
require_relative('../karaoke_bar')
require_relative('../room')

class Karaoke_barTest < MiniTest::Test

  def setup
    @karaoke_bar = Karaoke_bar.new("Electric Dreams")
    @room1 = Room.new("Paul McCartney Suite",7)
    @customer1 = Customer.new("Jim Morrison")
    @customer2 = Customer.new("Keith Moon")

  end

  def test_karaoke_bar_name
    assert_equal("Electric Dreams",@karaoke_bar.name())
  end

  def test_karaoke_bar_has_room
    assert_equal("Paul McCartney Suite",@room1.room_name)
  end


  # def test_put_customers_into_room
  #   @karaoke_bar.add_customer(@customer1)
  #   @karaoke_bar.add_customer(@customer2)
  #   assert_equal(2, @karaoke_bar.customer_count)
  # end


  def test_book_2_customers_into_room_and_check_1_customer_out_of_room
    @karaoke_bar.add_customer(@customer1)
    @karaoke_bar.add_customer(@customer2)
    @karaoke_bar.remove_customer(@customer1)
    assert_equal(1, @karaoke_bar.customer_count)
  end





end
