class TasksController < ApplicationController
  def create
    @smartkey = Smartkey.find(params[:smartkey_id])
    @tasks = @smartkey.tasks.create(task_params)
    redirect_to smartkey_path(@smartkey)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to smartkey_path(params[:smartkey_id])
  end

  def toggle
    render nothing: true
    @task = Task.find(params[:id])
    @task.done = !@task.done
    @task.save
  end

  private
    def task_params
      params[:task].permit(:title)
    end
end
