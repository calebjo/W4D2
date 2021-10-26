
class Employee
    attr_reader :salary

    def initialize(name, title, salary, boss = nil)
        @name, @title, @salary, @boss = name, title, salary, boss
    end
    
    def bonus(multiplier)
        @salary * multiplier
    end

end

class Manager < Employee
    attr_accessor :employees

    def initialize(name, title, salary, boss = nil)
       super
       @employees = []
    end

    def bonus(multiplier)
        total = 0

        @employees.flatten.each {|empl| total += empl.salary }

        total * multiplier
    end

end

m = Manager.new("Alex", "Manager", 10000)
e1 = Employee.new("Caleb", "Employee", 6000, m)
e2 = Employee.new("Bob", "Employee", 3000, m)
e3 = Employee.new("Dave", "Employee", 4000, m)

p m 
p e1