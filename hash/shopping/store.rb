# This file contains methods related to your store and its supplies.
# You should complete it according to the instructions in the TODO comments

def store_items
  # TODO: find the correct data structure to hold the shopping store items
  # instead of using nil below
  store = { "banane" => 7, "tomate" => 2, "fraises" => 8 }
  return store
end

def product_in_store?(product)
  # TODO: Check whether product is present in the store items
  return true if store_items.key?(product)
end

def price_of_product(product)
  # TODO: Return the price of the given product, if it's in store. nil otherwise
  if product_in_store?(product)
    return store_items[product]
  else
    return nil
  end
end

def store_items_to_s
  # TODO: Return a String with all store items in the following form:
  # - Meat: 7 euros
  # - Vegetables: 5 euros
  # ...
  #
  # HINT: add line breaks in your String with "\n"
  products = []
  store_items.each do |key, value|
    products << "- #{key}: #{value}$"
  end
  products.join("\n")
end
