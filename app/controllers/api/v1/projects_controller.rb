class Api::V1::ProjectsController < Api::V1::BaseController
  before_action :set_project, only: [:show, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def create
    @project = Project.new(project_params)
    @project.save
  end

  def update
    if @project.update(project_params)
      render :show
    else
      render json: { message: "Erro ao atualizar projeto" }
    end
  end

  def destroy
    if @project.destroy
      render json: { message: "Projeto excluido com sucesso" }
    else
      render json: { message: "Erro ao excluir projeto" }
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name)
  end
end
