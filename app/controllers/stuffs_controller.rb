class StuffsController < ApplicationController

  before_action :set_project, only: [:create]

  def create
    @project = Project.find(params[:project_id])
    @stuff = @project.stuffs.create(stuff_params)
    @project.save
    redirect_to project_path(@project.id)
  end

  def update
    if @project.update(project_params)
      redirect_to project_path(@project.id)
    else
      render 'edit'
    end
  end

  def destroy
    @stuff = Stuff.find(params[:id])
    @stuff.destroy
    redirect_to project_path(params[:project_id])
  end

  private

  def stuff_params
    params[:stuff].permit(:title, :mail, :tel, :post, :address, :birthday)
  end

  def set_project
    @project = Project.find(params[:project_id])
  end

end
