class Department
  attr_accessor :name, :aisle

  def initialize(name, aisle)
    @name= name
    @aisle = aisle
  end

  def to_s
    "#{@name} Department: Aisle #: #{@aisle}"
  end
  
end
