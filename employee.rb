class Employee

    attr_accessor :name, :email, :phone, :salary, :reviews

    def initialize
       @name = :name
       @email = :email
       @phone = :phone
       @salary = :salary
    end


     def raise_employee_salary
       new_salary = @salary.to_i + @salary.to_i * 0.25
       self.salary.to_s = new_salary
     end


end
