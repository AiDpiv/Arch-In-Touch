class StaticPagesController < ApplicationController
  def home
    @projects = Project.all
    @uploader = PhotoUploader.new
  end
  def show
    @project = Project.where({id: params[:id] }).first
    # render "static_page/show"
  end

end
