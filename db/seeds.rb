Restaurant.destroy_all
10.times do
 Restaurant.create(name: Faker::Company.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, category: %w(chinese italian japanese french belgian).sample)
end
