class Employee
    
    attr_reader :name, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        
        if boss != nil
            @boss.employees << self
        end
    end


    def bonus(multiplier)
        @salary * multiplier
    end

    
end



class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss)
        super
        @employees = []
    end 

    def add_employees(employee)
        # if employee.boss == @name
            @employees << employee
        # end
    end

    def bonus(multiplier)
        total_salary * multiplier
    end

    def total_salary
        sum = 0
        @employees.each do |ele|
            if !ele.is_a?(Manager)
                sum += ele.salary
            else
                output = ele.total_salary + ele.salary
                sum += output
            end
        end
        sum
    end

end


p ned = Manager.new('Ned', 'Founder', 1000000, nil)
p darren = Manager.new('Darren', 'TA Manager', 78000, ned )
p david = Employee.new('David', 'TA', 10000, darren )
p shawna = Employee.new('Shawna', 'TA', 12000, darren )

# darren.add_employees(david = Employee.new('David', 'TA', 10000, 'Darren' ))
# darren.add_employees(shawna = Employee.new('Shawna', 'TA', 12000, 'Darren' ))


p david.bonus(3)
p ned.bonus(5)
p darren.bonus(4)








