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
  
    def hire(employee_name, title)
        if @salaries.include?(title)
            @employees << Employee.new(employee_name, title)
        else raise 'An error occured' 
        end
    end
  
    def size
        @employees.length
    end
  
    def pay_employee(employee)
        if @funding < @salaries[employee.title]
            raise 'An error occured'
        else employee.pay(@salaries[employee.title])
                @funding -= @salaries[employee.title]
        end
    end
  
    def payday
        @employees.each { |employee| pay_employee(employee) }
    end
  
    def average_salary 
        total = 0
        @employees.each { |employee| total += @salaries[employee.title] }
        total / size
    end
  
    def close
        @employees = []
        @funding = 0
    end
  
end
