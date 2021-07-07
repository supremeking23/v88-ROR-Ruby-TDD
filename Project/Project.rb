# class Project
#     attr_accessor :name, :description
#     def initialize name, description
#       @name = name
#       @description = description
#     end
#     def elevator_pitch
#       "#{@name}, #{@description}"
#     end
#   end

#method 1
class Project
    attr_accessor :name, :description, :owner, :tasks
    def initialize (name,description, owner)
        @name = name
        @description = description
        @owner = owner
        @tasks = []
       
    end
    def elevator_pitch
        "#{@name}, #{@description}, #{@owner}"
    end

    def task_size
        #{@tasks.length}"
        @tasks.length
    end

    def tasks 
        # @tasks = ['ivan','sleep','eat','code']
        @tasks
    #    puts @tasks
    end

    def print_task
        for task in @tasks
            puts task
        end
    end

    def add_task(task)
        @tasks.push(task)
    end

end

# @project1 = Project.new('Project 1', 'description 1', 'Ivan')
# @project1.tasks
# @project1.add_task("task")
# @project1.tasks



