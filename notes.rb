
class ProjectsController < ApplicationController

def show
  @project = Project.where({id: params[:id] }).each { |i|  }
  @project = Project.where({id: params[:id] }).first
  render "projects/show"
end

end







# show.html.erb


<h1> <%= @project.name %> </h1>
