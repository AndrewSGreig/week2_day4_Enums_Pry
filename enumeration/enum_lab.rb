
pets = [
{
    name: "Sir Percy",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
},
{
    name: "King Bagdemagus",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
},
{
    name: "Sir Lancelot",
    pet_type: :dog,
    breed: "Pomsky",
    price: 1000,
},
{
    name: "Arthur",
    pet_type: :dog,
    breed: "Husky",
    price: 900,
},
{
    name: "Tristan",
    pet_type: :dog,
    breed: "Basset Hound",
    price: 800,
},
{
    name: "Merlin",
    pet_type: :cat,
    breed: "Egyptian Mau",
    price: 1500,
}
]


# Print out all of the names using a loop
for pet in pets
  p pet[:name]
end

# Print out all of the names using an enumerable
pets.each{|pet| print pet[:name], " ** "}

# Find a pet using a loop and if statement
for pet in pets
  if pet[:name]== "Sir Percy"
    p "found #{pet[:name]}"
    break
  end
end

# Find a pet using an enumerable
# p pets.find{|pet| pet[:name] == "Sir Lancelot" }


## Task: using enumerable methods:
## 1. Find the pet which breed is Husky
# p pets.find_all{|breed| breed[:breed] == "Husky"}

## 2. Make an array of all of the pets' names
array=[]
pets.each{| pet | array.push(pet[:name])}
p array

## 3. Find out if there are any pets of breed 'Dalmation' (true or false)
pets.each{|pet| puts pet[:breed] == "Dalmation"}

## 4. Find the most expensive pet i.e. pet with the highest/maximum price
p pets.max{|pet1, pet2| pet1[:price] <=>  pet2[:price]}
## 5. Find the total value (price) of all of the pets added together.
p pets.sum {|pet| pet[:price]}
## 6. Change each pet so their price is 50% cheaper

 pets.each do |pet|
   p pet[:price] *= 0.5
  #{|pet| pet[:price] * 1.5}
end
