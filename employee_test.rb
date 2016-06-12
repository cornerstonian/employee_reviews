
require_relative 'department'
require_relative 'employee'

require "minitest/autorun"

class DepartmentTest < Minitest::Test

   def test_can_create_department
      department = Department.new "Operations"
      assert_equal "Operations", department.dept_name
   end

   def test_add_employee
     department = Department.new "Marketing"
      jenny = Employee.new
     department.add_employee(jenny)
     assert_instance_of Employee, department.employees[0]
   end

   def test_get_department_name

     
   end

end



class EmployeeTest < Minitest::Test
    def setup
      @employee = Employee.new
      @employee.name = "Vois Cornerstone"
      @employee.email = "voiss@boardingschool.com"
      @employee.phone = "718-832-7777"
      @employee.salary = "100_000"
    end


    def test_set_and_get_attributes
      assert_equal "Vivian Cornerstone", @employee.name
      assert_equal "vivian@boardingschool.com", @employee.email
      assert_equal "718-832-2222", @employee.phone
      assert_equal "25_000", @employee.salary
    end


end


#CHECK: Create a new department (given its name).
#CHECK:  Create a new employee (given name, email address, phone number, and salary).
#CHECK: Add an employee to a department.
#CHECK Get an employee's name.
#CHECK Get an employee's salary.
# Get a department's name.
# Get a total salary for all employees in a department.
# Add some employee review text (a paragraph or two) to an employee.
# Mark whether an employee is performing satisfactorily or not satisfactorily.
# Give a raise to an individual. You decide if this makes sense in dollars or in percent.
# Give raises to a department's employees. You must pass this method a total dollar amount, and it must distribute the raise amounts reasonably to the department's employees. Only employees who are performing satisfactorily should get raises.
