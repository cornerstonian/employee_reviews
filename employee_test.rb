
require_relative 'department'
require_relative 'employee'

require "minitest/autorun"

class DepartmentTest < Minitest::Test


   def test_can_create_department
      department = Department.new "Operations"
      assert_equal "Operations", department.dept_name
      assert_instance_of Department, department
   end

   def test_add_employee
     department, jenny = Department.new("Marketing"), Employee.new

     department.add_employee(jenny)
     assert_instance_of Employee, department.employees[0]
   end

   #test pass and seem to do what I want here in the test...but dont now how to make that logic work in the employee class file.
   def test_total_employee_salaries_for_department
      department = Department.new "Sales"
      jason, xavier = Employee.new, Employee.new

      jason.salary = "65000"
      xavier.salary = "25000"
      department.add_employee(jason)
      department.add_employee(xavier)

      total_salaries = 0
      employee_salary_total = department.employees.each {|instance|
      total_salaries += instance.salary.to_i}

      assert_equal total_salaries, (jason.salary.to_i + xavier.salary.to_i)
   end


   def test_add_employee_reviews

   end

   def test_employee_satisfaction

   end


end



class EmployeeTest < Minitest::Test
    def setup
      @employee = Employee.new
      @employee.name = "Vois Cornerstone"
      @employee.email = "vois@boardingschool.com"
      @employee.phone = "718-832-7777"
      @employee.salary = "100000"
    end


    def test_set_and_get_attributes
      assert_equal "Vois Cornerstone", @employee.name
      assert_equal "vois@boardingschool.com", @employee.email
      assert_equal "718-832-7777", @employee.phone
      assert_equal "100000", @employee.salary
    end

    def test_raise_employee_salary
    new_salary = @employee.salary.to_i + @employee.salary.to_i * 0.25
    assert_equal 125000, new_salary.to_i
    end

end


#CHECK: Create a new department (given its name).
#CHECK:  Create a new employee (given name, email address, phone number, and salary).
#CHECK: Add an employee to a department.
#CHECK Get an employee's name.
#CHECK Get an employee's salary.
#CHECK Get a department's name.
#CHECK:KINDA -Get a total salary for all employees in a department.
#CHECK: Give a raise to an individual. You decide if this makes sense in dollars or in percent.


# Add some employee review text (a paragraph or two) to an employee.

# Mark whether an employee is performing satisfactorily or not satisfactorily.


# Give raises to a department's employees. You must pass this method a total dollar amount, and it must distribute the raise amounts reasonably to the department's employees. Only employees who are performing satisfactorily should get raises.
