class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @uploader = PhotoUploader.new
    @abouts = About.all
  end
  def show
    @project = Project.where( id: params[:id] ).first
    end
end
