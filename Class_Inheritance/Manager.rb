require_relative 'Employee'

class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

    def bonus(multiplier)
        employee_salaries * multiplier
    end

    def org_chart(name)
        employees << name
    end

    def employee_salaries
        res = 0
        employees.each do | employee|
            res += employee.salary
            if employee.is_a?(Manager)
                res += employee.employee_salaries
            end
        end
        res
    end
end