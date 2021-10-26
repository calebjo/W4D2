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
 
        queue = [*@employees]
        p queue[0].employees[0]
        # until queue.empty?
        #     current = queue.pop
        #     total += current.salary
        #     current.employees.each {|empl| queue.unshift(empl) }
        # end
        p total
        # @employees.flatten.each {|empl| p empl.name }
        # puts @employees.flatten
        @employees.flatten.each {|empl| total += empl.salary }

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
ceo.bonus(3)
# p ceo