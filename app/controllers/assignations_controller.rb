class AssignationsController < ApplicationController
  def create
    project = Project.find(params[:project_id])
    worker = Staff.find(params[:staff][:staff_id])
    project.staffs.push(worker)
    project.save
    redirect_to project_path(project)
  end

  def destroy
    project = Project.find(params[:project_id])
    worker = Staff.find(params[:staff_id])
    project.staffs.delete(worker)
    project.save
    redirect_to root_path(project)
  end
end
