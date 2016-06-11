
require_relative 'department'
require_relative 'employee'

require "minitest/autorun"

class DepartmentTest < Minitest::Test
 def test_can_create_department
    new_dept = Department.new "Operations"
    assert_equal "Operations", new_dept.dept_name
 end

 def method_name

 end

end


class EmployeeTest < Minitest::Test
     def setup
      @employee = Employee.new
    end


    def test_create_employee
      @employee.name = "Vois Cornerstone"
      @employee.email = "vois@boardingschool.com"
      @employee.phone = "718-832-7777"
      @employee.salary = "100_000"

      assert_equal "Vois Cornerstone", @employee.name
      assert_equal "vois@boardingschool.com", @employee.email
      assert_equal "718-832-7777", @employee.phone
      assert_equal "100_000", @employee.salary
    end



end


# CHECK: Create a new department (given its name).
#CHECK: Create a new employee (given his/her name, email address, phone number, and salary

#Add an employee to a department.


# Get an employee's name.
# Get an employee's salary.
# Get a department's name.
# Get a total salary for all employees in a department.
# Add some employee review text (a paragraph or two) to an employee.
# Mark whether an employee is performing satisfactorily or not satisfactorily.
# Give a raise to an individual. You decide if this makes sense in dollars or in percent.
# Give raises to a department's employees. You must pass this method a total dollar amount, and it must distribute the raise amounts reasonably to the department's employees. Only employees who are performing satisfactorily should get raises.
