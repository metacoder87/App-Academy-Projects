require "employee"

class Startup
  
  attr_accessor :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end
  
    def valid_title?(title)
        @salaries.include?(title)
    end
  
    def >(startup)
       if self.funding > startup.funding
            true
       else false
       end
    end
  
end
