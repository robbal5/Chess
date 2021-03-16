class Employee

attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        bonus_amount = self.salary * multiplier
    end

    def add_employee
        boss.employees << self
    end

end