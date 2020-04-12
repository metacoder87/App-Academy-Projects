
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
  
    def board_passenger(passenger)
        if full?
            return "Sorry we're all booked up."
        elsif passenger.has_flight?(@flight_number)
            @passengers << passenger
        end
    end
  
    def list_passengers
        list = []
        passengers.each_index { |i| list << passengers[i].name }
        list
    end
  
    def [](index)
        passengers[index]
    end

    def <<(passenger)
        board_passenger(passenger)
    end

end
