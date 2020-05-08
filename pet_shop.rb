# for test_pet_shop_name. Pass if name of pet shop returned as "Camelot of Pets"
def pet_shop_name(shop_name)
  return shop_name[:name]
end

# for test_total_cash. Should return the integer 1000.
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

# for test_add_or_remove_cash__(add and remove). should return the integer 1010 and 990 respectively.
def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

# for test_pets_sold, should return the integer 0
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

# for test_increase_pets_sold. Should return the integer 2
def increase_pets_sold(pet_shop, pets_sold)
  pet_shop[:admin][:pets_sold] += pets_sold
end

 # for test_stock_count. Should return the integer 6
 def stock_count(pet_shop)
   return pet_shop[:pets].length
 end

# for test_all_pets_by_breed__(found and not_found). Should return the integer 2 and 0 respectively.
