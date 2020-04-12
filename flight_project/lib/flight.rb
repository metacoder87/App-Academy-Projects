
require_relative 'passenger'

class Flight
  
    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end
  
    def passengers
        @passengers
    end
  
    def full?
        while @passengers.count < @capacity
            return false
        end
        true
    end

end
