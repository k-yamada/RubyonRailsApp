class StuffsController < ApplicationController

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

  private

  def stuff_params
    params[:stuff].permit(:title, :mail, :tel, :post. :address, :birthday)
  end

end
