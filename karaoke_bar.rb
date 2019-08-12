class Karaoke_bar

attr_reader :name

  def initialize(name)
    @name = name
    @customers_in_room = []

  end

  def customer_count
    return @customers_in_room.count
  end

  def add_customer(customer)
    @customers_in_room << customer
  end

  def remove_customer(customer)
    index_of_customer = @customers_in_room.index(customer)
    @customers_in_room.delete_at(index_of_customer)
  end

end
