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
def pets_by_breed(pet_shop, breed)
  breed_total = []
  for item in pet_shop[:pets]
    if item[:breed] == breed # was returning an array of 6 of the same breed in an array because I accidentally used a single = operator
      breed_total.push(item[:breed])
    end
  end
  return breed_total
end

# for test_find_pet_by_name__returns_(pet and nil), should return "Arthur" and nil respectively.

# Constantly getting a "no explicit conversion of string to integer" error on this one, possibly because I'm not returning the item[:name] correctly

def find_pet_by_name(pet_shop, pet_name)
  for item in pet_shop[:pets]
    if item[:name] == pet_name
      return item[:name]
      end
    end
    return nil
  end

# for test_remove_pet_by_name. Should remove a pet and then use the find_pet_by_name function to remove them.
def remove_pet_by_name(pet_shop, pet_name)
for item in pet_shop[:pets]
if item[:name] == pet_name
    pet_shop[:pets].delete(item)
  end
end
end
