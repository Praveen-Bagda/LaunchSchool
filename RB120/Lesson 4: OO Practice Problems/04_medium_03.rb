class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(update_count)
    quantity = update_count if update_count >= 0
  end
end 

# Yes if we don't want to update quantity directly. 
