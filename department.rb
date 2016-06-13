require './employee'
require 'pp'

class Department < Employee

  attr_accessor :dept_name, :employees

  def initialize(dept_name)
    @dept_name = dept_name
    @employees = []
  end

  def add_employee(employee)
      @employees << employee
  end

  def total_salaries

  end

end
