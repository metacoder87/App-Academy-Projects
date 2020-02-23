require_relative "room"

class Hotel
  
  def initialize(name, vacancies)
    @name = name
    @rooms = {}

    vacancies.each { |key, val| @rooms[key] = Room.new(val) }
  end
  
  def name
    arr = []
    @name.split(" ").each { |word| arr << word.capitalize }
    arr.join(" ")
  end
  
  def rooms
    @rooms
  end

  def room_exists?(name)
    @rooms.include?(name)
  end
  
end
