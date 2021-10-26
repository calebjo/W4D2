require "byebug"

class Employee
    attr_reader :salary, :name

    def initialize(name, title, salary, boss = nil)
        @name, @title, @salary, @boss = name, title, salary, boss
        add_employee
    end

    def add_employee
        @boss.employees << self unless @boss.nil?
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
        queue = @employees
        until queue.empty?
            current = queue.shift
            total += current.salary
            if current.is_a?(Manager)
                current.employees.each {|empl| queue << empl }
            end
        end
        total * multiplier
    end

end

ceo = Manager.new("Any","CEO", 40000)
m = Manager.new("Alex", "Manager", 10000,ceo)
e1 = Employee.new("Caleb", "Employee", 6000, m)
e2 = Employee.new("Bob", "Employee", 3000, m)
e3 = Employee.new("Dave", "Employee", 4000, m)

# p m 
# p e1
p ceo.bonus(3)
p m.bonus(2)
p e1.bonus(3)
# p ceo