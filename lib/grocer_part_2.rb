require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each do |grocery| 
    current_item = find_item_by_name_in_collection(grocery[:item], coupons)
    if current_item
      coupons.each do |coupon|
        if grocery[:item] == coupon[:item]
          cart.push({
            :item => "#{grocery[:item]} W/COUPON",
            :price => coupon[:cost]/coupon[:num],
            :clearance => grocery[:clearance],
            :count => coupon[:num]
          })
          grocery[:count] -= coupon[:num]
        end
      end
    end
  end
  p cart
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

apply_coupons(
 [
  {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 2},
],
  [
      {:item => "AVOCADO", :num => 2, :cost => 5.00},
      {:item => "BEER", :num => 2, :cost => 20.00},
      {:item => "CHEESE", :num => 3, :cost => 15.00}
  ]
  )