class Project

  attr_accessor :name, :budget, :team_members

  def initialize(name, budget, team_members)
    @name = name
    @budget = budget
    @team_members = team_members
  end
end

project_tech_updates = Project.new("Q4 Tech Updates", 1000, ["Piers", "Rob", "Jon"])
p project_tech_updates.name
p project_tech_updates.team_members
p project_tech_updates.budget

# "Q4 Tech Updates"
# ["Piers", "Rob", "Jon"]
# 1000

ecommerce_project = Project.new("E-Commerce Website", 500, ["Alice", "Bob", "Charlie"])
p ecommerce_project.name
p ecommerce_project.team_members
p ecommerce_project.budget

# "E-Commerce Website"
# ["Alice", "Bob", "Charlie"]
# 500
