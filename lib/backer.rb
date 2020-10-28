class Backer
    attr_accessor :name, :backed_projects
  
    def initialize(name)
      @name = name
      @backed_projects = []
    end

  
    def backed_projects		
      proj_backs = ProjectBacker.all.select {|proj_back| proj_back.backer == self}		
      proj_backs.map {|proj_back| proj_back.project}		
    end

    
    def back_project(project)		
      ProjectBacker.new(project, self)
    end
  end