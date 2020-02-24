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
  
  def check_in(person, room)
    if room_exists?(room)
        if @rooms[room].add_occupant(person)
            puts 'check in successful'
        else puts 'sorry, room is full'
        end
    else puts 'sorry, room does not exist'
    end
  end
  
  def has_vacancy?
    @rooms.values.any? { |room| room.available_space > 0 }
  end
  
end
