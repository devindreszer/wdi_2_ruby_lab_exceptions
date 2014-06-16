require 'faker'
require_relative 'validation.rb'

module Lab

  class Car

    include Lab::Validation

    attr_reader :make, :model, :year, :vin

    def initialize(make, model, year)
      @make, @model, @year = make, model, year
      @vin = Faker::Number.number(17)

      self.validate_make
      self.validate_model
      self.validate_year

    end
  end
end


