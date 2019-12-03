def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  index = 0
  while collection[index] do
    if collection[index][:item] == name
      return collection[index]
    end
    index += 1
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  index = 0
  result = []
  while cart[index] do 
    exist = result.detect{|item| item[:item] == cart[index][:item]}
    if exist
      exist[:count] += 1
    else
      cart[index][:count] = 1
      result.push(cart[index])
    end
    index += 1
  end
  return result
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupon_index = 0
  while coupons[coupon_index] do 
    item = cart.find{|x| x[:item] == coupons[coupon_index][:item]}
    # if item && item[:count] > coupons[coupon_index][:count]
    #   item[:count] -= coupons[coupon_index][:count]
    #   copy = item.deep_dup
    #   copy[:name] += " W/COUPON"
    #   copy[:count] = coupons[coupon_index][:count]
    #   copy[:clearance] = true
    #   cart.push(copy)
    # else if item && item[:count] == coupons[coupon_index][:count]
    #   item[:name] += " W/COUPON"
    #   item[:clearance] = true
    # end
    coupon_index += 1
  end
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
