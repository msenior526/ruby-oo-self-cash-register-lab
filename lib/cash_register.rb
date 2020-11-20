class CashRegister
attr_accessor :discount, :total, :last_transaction, :quantity
  def initialize (discount = 0)
    self.total = 0
    self.discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.last_transaction = price * quantity
      self.quantity = quantity
     self.total += price * quantity
      quantity.times{@items << title}
    end

  def apply_discount
    if discount > 0
      self.total -= total * discount / 100
       "After the discount, the total comes to $#{total}."
    else 
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= last_transaction
    quantity.times {items.pop}
   
  end

end
