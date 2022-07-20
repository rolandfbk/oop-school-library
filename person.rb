require './nameable'

class Person < Nameable
  attr_reader :rentals, :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super()
    @rentals = []
  end

  attr_accessor :name, :age

  def correct_name
    @name
  end

  def can_use_services?
    of_age? == true || parent_permission == true
  end

  private

  def of_age?
    @age < 18
  end
end
