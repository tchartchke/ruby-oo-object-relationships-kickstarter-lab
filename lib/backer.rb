class Backer
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    my_projects = ProjectBacker.all.select { |proj| proj.backer == self}
    my_projects.map { |proj| proj.project }.uniq
  end
end