class TimeEntriesController < ApplicationController
  def index
    @my_project = Project.find(params[:project_id])
    @my_entries = @my_project.time_entries.where(created_at: Time.now.beginning_of_month..Time.now.end_of_month)
  end
  def new
    @my_project = Project.find(params[:project_id])
    @my_entry = @my_project.time_entries.new
  end
  def create
    @my_project = Project.find(params[:project_id])
    @my_entry = @my_project.time_entries.new(hours: params[:time_entry][:hours], minutes: params[:time_entry][:minutes], date: params[:time_entry][:date])

    if @my_entry.save
      redirect_to "/projects/#{@my_project.id}/time_entries"
    else
      render "new"
    end
  end
end
# @my_project = Project.new(:name => params[:project][:name], :description=>params[:project][:description])
# @my_project.save
# redirect_to "/projects/#{@my_project.id}"
