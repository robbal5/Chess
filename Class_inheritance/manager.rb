require_relative "employee"

class Manager < Employee

    attr_accessor :employees

    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

    def bonus(multiplier)
       salaries = @employees.map {|emp| emp.salary}
       salaries.sum * multiplier
    end 

end