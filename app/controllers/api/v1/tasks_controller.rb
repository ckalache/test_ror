class Api::V1::TasksController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @task = Task.new(task_params)
    @task.project = @project
    @task.save
  end

  private

  def task_params
    params.require(:task).permit(:date, :description, :status)
  end
end
