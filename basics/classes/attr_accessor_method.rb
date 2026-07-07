# attr_accessor creates both getter and setter methods for an instance variable.
# It allows you to read and update the variable from outside the class,
# combining the functionality of attr_reader and attr_writer.

class Project

  attr_reader :name, :team_members
  attr_accessor :budget

  def initialize
    @name = "Q4 Tech Updates"
    @budget = 100000
    @team_members = ["Piers", "Rob", "Jon"]
  end

end

project = Project.new
p project.name
p project.team_members
p project.budget

project.budget = 10
p project.budget
