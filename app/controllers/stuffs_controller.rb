class StuffsController < ApplicationController


  before_action :set_project

  def create
    @project = Project.find(params[:project_id])
    @stuff = @project.stuffs.create(stuff_params)
    redirect_to project_path(@project.id)
  end

  def destroy
    @stuff = Stuff.find(params[:id])
    @stuff.destroy
    redirect_to project_path(params[:project_id])
  end

  def toggle
    render nothing: true
    @stuff = Stuff.find(params[:id])
    @stuff.done = !@stuff.done
    @stuff.save
  end

  private

  def stuff_params
    params[:stuff].permit(:title, :mail, :tel, :post. :address, :birthday)
  end

  def set_project
    @project = Project.find(params[:id])
  end

end
