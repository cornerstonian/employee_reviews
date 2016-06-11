class Department

  attr_accessor :dept_name

  def initialize(dept_name)
    @dept_name = dept_name
  end

end

dept = Department.new "Operations"
