require 'rspec'
require './lib/animal'
require './lib/zoo'

RSpec.describe Zoo do
  it 'exists' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

    expect(zoo).to be_a(Zoo)
  end

  it 'has a street address' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

    expect(zoo.street).to eq("2300 Southern Blvd")
  end

  it 'has a city' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

    expect(zoo.city).to eq("Bronx")
  end

  it 'has a state' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

    expect(zoo.state).to eq("NY")
  end

  it 'has a zip code' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

    expect(zoo.zip_code).to eq("10460")
  end

  it 'has a complete address' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

    expect(zoo.street).to eq("2300 Southern Blvd Bronx, NY 10460")
  end

  it 'starts with no inventory' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

    expect(zoo.inventory).to eq([])
  end

  it 'starts with no animals' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")

    expect(zoo.animal_count).to eq(0)
  end

  it 'can add animals' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
    animal_1 = Animal.new("Sea Otter", 10, 25)
    animal_2 = Animal.new("Red Panda", 5, 70)

    zoo.add_animal(animal_1)
    zoo.add_animal(animal_2)

    expect(zoo.inventory).to eq ([animal_1, animal_2])
  end

  it 'has an animal count' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
    animal_1 = Animal.new("Sea Otter", 10, 25)
    animal_2 = Animal.new("Red Panda", 5, 70)

    zoo.add_animal(animal_1)
    zoo.add_animal(animal_2)

    expect(zoo.animal_count).to eq(2)
  end

end
