class CashRegister

    attr_accessor :total
    attr_reader :discount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        @quantity = quantity
        @quantity.times { @items << item }
        @price = price
        @total += (price * quantity)
    end

    def apply_discount
        @total -= @total * @discount / 100
        return "There is no discount to apply." if @discount == 0
        "After the discount, the total comes to $#{@total}."
    end

    def items
        @items
    end

    def void_last_transaction
        @quantity.times { @total -= @price }
    end
end
