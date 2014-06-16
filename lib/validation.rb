require 'Date'
require_relative 'car_validation_errors.rb'

module Lab
  module Validation
    MAKES = {"toyota" => %w(camry lexus corolla rav4), "ford" => %w(focus taraus mustang), "gm" => %w(corvette lumina nova)}

    # validate make of car
    def validate_make
      raise CarValidationErrors.new("Invalid Make") unless MAKES.include?(make)
    end

    # validate model of car
    def validate_model
      raise CarValidationErrors.new("Invalid Model") unless MAKES[make].include?(model)
    end

    # validate year of car
    def validate_year
      raise CarValidationErrors.new("Invalid Year") unless (year >= 1960 && year < Date.today.year)
    end

  end
end
