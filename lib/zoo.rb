class Zoo
  attr_reader :name, :street, :city, :state, :zip_code, :inventory, :animal_count

  def initialize(name, street, city, state, zip_code)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip_code = zip_code
    @inventory = []
    @animal_count = 0
  end

  def address
    "#{@street} #{@city}, #{@state} #{@zip_code}"
  end

  def add_animal(animal)
    @inventory << animal
    @animal_count += 1
  end

  def animals_older_than(weeks)
    animal_by_age = []
    @inventory.each do |animal|
      if animal.weeks > weeks
        animal_by_age << animal
      end
    end
    animal_by_age
  end

  def total_weight_of_animals
    total_weight = 0
    @inventory.each do |animal|
      total_weight += animal.pounds
    end
    total_weight
  end

  def details
    details = {
      "total_weight" => total_weight_of_animals,
      "street_address" => @street
    }
  end

  def animals_sorted_by_weight
    @inventory.sort_by { |animal| -animal.pounds }
  end

  def animal_hash
    animal_hash = Hash.new { |hash, key| hash[key] = []}
    @inventory.select do |animal|
      animal_hash[animal.kind[0].upcase] << animal
    end
    animal_hash
  end
end
