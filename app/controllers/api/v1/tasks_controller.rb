class Api::V1::TasksController < Api::V1::BaseController
  before_action :set_task, only: [:update, :destroy]

  def create
    @project = Project.find(params[:project_id])
    @task = Task.new(task_params)
    @task.project = @project
    @task.save
  end

  def update
    if @task.update(task_params)
      render json: { message: "Tarefa atualizada" }
    else
      render json: { message: "Erro ao atualizar tarefa" }
    end
  end

  def destroy
    if @task.destroy
      render json: { message: "Tarefa excluida com sucesso" }
    else
      render json: { message: "Erro ao excluir tarefa" }
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:date, :description, :status)
  end
end
