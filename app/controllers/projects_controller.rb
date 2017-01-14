class ProjectsController < ApplicationController
  def index
    @projects = Project.order(created_at: :desc).limit(10)
  end
  def show
    @my_proyect = Project.find_by(id: params[:id])
    unless @my_proyect
      render plain: "este no esta es se fue "
    end
  end
end
