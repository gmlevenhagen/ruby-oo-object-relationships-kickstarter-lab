class Project
    attr_accessor :title, :backers
  
    def initialize(title)
      @title = title
      @backers = []
    end

    def backers	
      proj_backs = ProjectBacker.all.select {|proj_back| proj_back.project == self}		
      proj_backs.map {|proj_back| proj_back.backer}		
    end
  
    def add_backer(backer)		
      ProjectBacker.new(self, backer)		
    end
 
  end