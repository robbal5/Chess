class Employee

attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        add_employee unless boss.nil?
    end

    def bonus(multiplier)
        bonus_amount = self.salary * multiplier
    end

    def add_employee
        @boss.employees << self
        @boss.boss.employees  << self unless @boss.boss.nil?
    end

end