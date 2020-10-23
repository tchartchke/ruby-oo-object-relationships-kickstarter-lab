class Project
  attr_accessor :title

  def initialize(title)
    self.title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    my_backers = ProjectBacker.all.select { |proj| proj.project == self }
    my_backers.map { |proj| proj.backer }.uniq
  end
end