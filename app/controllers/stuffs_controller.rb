class StuffsController < ApplicationController

  before_action :set_project, only: [:create, :update]
  before_action :set_stuff, only: [:update, :destroy]

  def create
    @project = Project.find(params[:project_id])
    @stuff = Stuff.new(stuff_params.merge(project_id: @project.id))
    if @stuff.save
      redirect_to project_path(@project.id), notice: 'Stuff was successfully created.'
    else
      render :template => "projects/show"
    end
  end


  def update
    if @stuff.update(stuff_params)
      redirect_to project_path(@project.id)
    else
      render 'edit'
    end
  end

  def destroy
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

  def set_stuff
    @stuff = Stuff.find(params[:id])
  end

end
