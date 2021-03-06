class TasksController < ApplicationController
  before_filter :ensure_logged_in
  def index
    @tasks = @auth.tasks
  end
  def create
    task = Task.create(params[:task])
    @auth.tasks << task
    render :json => [task.as_json(:include => :priority)]
  end
  def update
    task = Task.find(params[:id])
    task.update_attributes(params[:task])
    render :json => [task]
  end
  def destroy
    task = Task.find(params[:id])
    task.delete
  end
end