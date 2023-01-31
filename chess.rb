class Employee


    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end


    def bonus(multiplier)
        @salary * multiplier
    end

    
end



class Manager < Employee

    attr_reader :name

    def initialize(name, title, salary, boss)
        super
        @employees = []
    end 

    def add_employees(employee)
        @employees << employee
    end

    def bonus(multiplier)
        total_salary * multiplier
    end

    def total_salary
        
    end


end









