require_relative "room"

class Hotel
  
  def initialize(name, vacancies)
    @name = name
    @rooms = {}

    vacancies.each { |key, val| @rooms[key] = Room.new(val) }
  end
  
end
