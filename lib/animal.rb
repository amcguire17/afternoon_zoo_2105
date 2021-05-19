class Animal
  attr_reader :kind

  def initialize(kind, weight, weeks)
    @kind = kind
    @weight = weight
    @weeks = weeks
  end

  def weight
    "#{@weight} pounds"
  end

  def age
    "#{@weeks} weeks"
  end

  def age_in_days
    @weeks * 7
  end

  def feed!(pound)
    @weight += pound
  end
end
