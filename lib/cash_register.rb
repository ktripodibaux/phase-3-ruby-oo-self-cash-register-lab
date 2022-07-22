class CashRegister



    attr_accessor :discount, :total


    def initialize (value = 0)
        @total = 0
        @discount = value
    end

    def add_item (title, price, quantity = 1)
        amount = price * quantity
        @total += amount
    end

    def apply_discount
        if @discount != 0
            @total = @total - (@total * @discount / 100)
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
            
    end

end
