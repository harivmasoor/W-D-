require_relative 'Manager.rb'
class Employee
    attr_reader :salary
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end

    def boss=(boss)
        @boss = boss
        boss.org_chart(self) 
    end
end
