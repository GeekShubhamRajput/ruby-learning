# attr_reader: Creates getter methods to read an instance variable from outside the class.
# attr_writer: Creates setter methods to update an instance variable from outside the class.

class Project

  attr_reader :name, :budget, :team_members
  attr_writer :budget

  def initialize
    @name = "Q4 Tech Updates"
    @budget = 100000
    @team_members = ["Piers", "Rob", "Jon"]
  end

end

project = Project.new
p project.name          # Q4 Tech Updates
p project.team_members  # ["Piers", "Rob", "Jon"]
p project.budget        # 100000

project.budget = 10
p project.budget        # 10
