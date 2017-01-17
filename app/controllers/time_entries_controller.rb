class TimeEntriesController < ApplicationController
  def index
    @my_project = Project.find(params[:project_id])
    @my_entries = @my_project.time_entries.where(created_at: Time.now.beginning_of_month..Time.now.end_of_month)
  end
end
