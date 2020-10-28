class CashRegister
    
    attr_accessor :total, :discount

    def initialize(discount=0)
        @discount = discount
        @total=0
    end


  
    def add_item(title,price, quantity=1)
        @title=title
        @price=price
        @quantity ||= quantity
        @total += (price*quantity)
    end

    def apply_discount
        @total= @total*((100-@discount)/100)
        if discount >0 
            then "After the discount, the total comes to #{total}."
        elsif discount == 0 
            then "There is no discount to apply."
        end
    end

    def items
        new_register=[]
        new_register << add_item[title]
    end

    def void
    end




end

