class Animal
  attr_reader :kind, :pounds, :weeks

  def initialize(kind, pounds, weeks)
    @kind = kind
    @pounds = pounds
    @weeks = weeks
  end

  def weight
    "#{@pounds} pounds"
  end

  def age
    "#{@weeks} weeks"
  end

  def age_in_days
    @weeks * 7
  end

  def feed!(pound)
    @pounds += pound
  end
end
