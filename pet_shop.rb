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
      return item
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

# for test_add_pet_to_stock.
# Should add a new pet and return the new total number (the integer 7).

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

# for test_customer_cash
# returns the cash held by a customer by array index. Should return the integer 1000.

def customer_cash(customer)
  return customer[:cash]
end

#for test_remove_customer_cash
# Reduces the value of cash from a customer by array index by a given amount. Should return the integer 900.

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

# for test_customer_pet_count
# returns the total number of pets a customer has. Should return 0.

def customer_pet_count(customer)
  return customer[:pets].length
end

# for test_add_pet_to_customer
# adds a new pet to a customer. Should return 1.

def add_pet_to_customer(customer, new_pet)
  return customer[:pets].push(new_pet)
end

# --- OPTIONAL ---

# for test_customer_can_afford_pet__(sufficient_funds, insufficient_funds and exact_funds).
# Should check if customer can afford Bors the Younger and return true, false and true respectively
def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  end
  return false
end

# for test_sell_pet_to_customer__(pet_found, pet_not_found,insufficient_funds)

def sell_pet_to_customer(pet_shop, pet, customer)
  if customer_can_afford_pet(customer, pet) == true
    pet_shop[:admin][:pets_sold] += 1
    add_pet_to_customer(customer, pet)
    remove_customer_cash(customer, pet[:price])
    add_or_remove_cash(pet_shop, pet[:price])
    remove_pet_by_name(pet)
    return
  elsif
    customer_can_afford_pet(customer, pet,) == false
    return false
  end
end
