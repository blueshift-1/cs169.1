=begin

File: hw0-3.rb
Purpose: To create a class (BookInStock) that has basic attributes
Creator: Zachary Wilson
Email: zachary.wilson13@gmail.com
Updated: 10/6/2013

Class:
-BookInStock: has attributes price and isbn as well as price_as_string which produces
 a formatted output. Also data verification should be implemented

=end

class BookInStock
  # Constructor
  def initialize (isbn, price=0)
    verify_isbn(isbn)
    verify_price(price)
    @price = price
    @isbn = isbn
  end
  
  # Accessors
  def price
    return @price
  end
  def price_as_string 
    new_price = sprintf("%.2f",@price)
    return "$#{new_price}"
  end
  def isbn
    return @isbn
  end
  
  # Mutators
  def price=(new_amount)
    verify_price(new_amount)
    @price = new_amount
  end
  def isbn=(new_amount)
    verify_isbn (new_amount)
    @isbn = new_amount
  end
  
  #Price mus be greater than zero
  def verify_price(price)
    if price <= 0
      raise ArgumentError, 'Price cannot be below $0.00'
    end
  end
  
  #ISBN must be nonempty string
  def verify_isbn(isbn)
    if isbn.length == 0
      raise ArgumentError, 'ISBN must be non-empty string'
    end
  end
end