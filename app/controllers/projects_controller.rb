class ProjectsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_project
    @project = Project.find_by(:id , params[:id])
  end

  def project_params
    params.require(:project).permit(:title,:description,:url)
  end

end
