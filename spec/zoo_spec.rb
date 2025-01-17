require 'rspec'
require './lib/animal'
require './lib/zoo'

RSpec.describe Zoo do

  describe 'Iteration 2' do
    before(:each) do
      @zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
    end

    it 'exists' do
      expect(@zoo).to be_a(Zoo)
    end

    it 'has a street address' do
      expect(@zoo.street).to eq("2300 Southern Blvd")
    end

    it 'has a city' do
      expect(@zoo.city).to eq("Bronx")
    end

    it 'has a state' do
      expect(@zoo.state).to eq("NY")
    end

    it 'has a zip code' do
      expect(@zoo.zip_code).to eq("10460")
    end

    it 'has a complete address' do
      expect(@zoo.address).to eq("2300 Southern Blvd Bronx, NY 10460")
    end

    it 'starts with no inventory' do
      expect(@zoo.inventory).to eq([])
    end

    it 'starts with no animals' do
      expect(@zoo.animal_count).to eq(0)
    end

    it 'can add animals' do
      animal_1 = Animal.new("Sea Otter", 10, 25)
      animal_2 = Animal.new("Red Panda", 5, 70)

      @zoo.add_animal(animal_1)
      @zoo.add_animal(animal_2)

      expect(@zoo.inventory).to eq ([animal_1, animal_2])
    end

    it 'has an animal count' do
      animal_1 = Animal.new("Sea Otter", 10, 25)
      animal_2 = Animal.new("Red Panda", 5, 70)

      @zoo.add_animal(animal_1)
      @zoo.add_animal(animal_2)

      expect(@zoo.animal_count).to eq(2)
    end
  end

  describe 'Iteration 3' do
    before(:each) do
      @zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
      @animal_1 = Animal.new("Sea Otter", 10, 25)
      @animal_2 = Animal.new("Red Panda", 5, 70)
      @animal_3 = Animal.new("Capybara", 100, 150)
      @animal_4 = Animal.new("Dolphin", 150, 200)

      @zoo.add_animal(@animal_1)
      @zoo.add_animal(@animal_2)
      @zoo.add_animal(@animal_3)
      @zoo.add_animal(@animal_4)
    end
    it 'has animals older than 250 weeks' do
      expect(@zoo.animals_older_than(250)).to eq([])
    end

    it 'has animals older than 100 weeks' do
      expect(@zoo.animals_older_than(100)).to eq([@animal_3, @animal_4])
    end

    it 'has animals older than 10 weeks' do
      expect(@zoo.animals_older_than(10)).to eq([@animal_1, @animal_2, @animal_3, @animal_4])
    end

    it 'has a total weight of animals' do
      expect(@zoo.total_weight_of_animals).to eq(265)
    end

    it 'has details of zoo' do
      expect(@zoo.details).to eq({"total_weight" => 265, "street_address" => "2300 Southern Blvd"})
    end
  end

  describe "Iteration 4" do
    before(:each) do
      @zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
      @animal_1 = Animal.new("Sea Otter", 10, 25)
      @animal_2 = Animal.new("Red Panda", 5, 70)
      @animal_3 = Animal.new("Capybara", 100, 150)
      @animal_4 = Animal.new("Dolphin", 150, 200)

      @zoo.add_animal(@animal_1)
      @zoo.add_animal(@animal_2)
      @zoo.add_animal(@animal_3)
      @zoo.add_animal(@animal_4)
    end
    it 'animals can be sorted by weight' do
      expect(@zoo.animals_sorted_by_weight).to eq([@animal_4, @animal_3, @animal_1, @animal_2])
    end

    it 'can have animal hash' do
      animal_5 = Animal.new("Dog", 65, 200)

      @zoo.add_animal(animal_5)

      expect(@zoo.animal_hash).to eq({
        "C" => [@animal_3],
        "D" => [@animal_4, animal_5],
        "R" => [@animal_2],
        "S" => [@animal_1]})
    end
  end

end
