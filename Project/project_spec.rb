# require_relative 'project' # include our Project class in our spec file
# RSpec.describe Project do  
#   before(:each) do 
#     @project1 = Project.new('Project 1', 'description 1') # create a new project and make sure we can set the name attribute
#   end
#   it 'has a getter and setter for name attribute' do
#     @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
#     expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
#   end 
# end


require_relative 'project'
RSpec.describe Project do
  before(:each) do
    # updated this block to create two projects
    @project1 = Project.new('Project 1', 'description 1', 'Ivan')
    # @project2 = Project.new('Project 2', 'description 2', 'Ivan')
  end
   
    # Code from the previous tab removed for brevity. Leave it in.
 
  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1, Ivan")
    # expect(@project2.elevator_pitch).to eq("Project 2, description 2, Ivan")
  end

   it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.task_size).to eq(0)
    # expect(@project2.elevator_pitch).to eq("Project 2, description 2, Ivan")
  end

#   it 'Add a tasks method that returns the tasks for each project' do
#     expect(@project1.tasks).to eq(['ivan','sleep','eat','code'])
#     # expect(@project2.elevator_pitch).to eq("Project 2, description 2, Ivan")
#   end

  it 'Write a test for the owner attribute. It should have a getter and a setter' do
    @project1.owner = "Madulche"
    expect(@project1.owner).to eq("Madulche")
    # expect(@project2.elevator_pitch).to eq("Project 2, description 2, Ivan")
  end

  it 'Write a test for the tasks and add_tasks methods' do
    @project1.add_task("laro")
    expect(@project1.tasks).to eq(['laro'])
    # expect(@project2.elevator_pitch).to eq("Project 2, description 2, Ivan")
  end

  it 'Add a new method called print_tasks that will print each task in your project' do
    @project1.add_task("laro")
    @project1.add_task("wew")
    expect(@project1.tasks).to eq(['laro','wew'])
    # expect(@project2.elevator_pitch).to eq("Project 2, description 2, Ivan")
  end

 



  
end