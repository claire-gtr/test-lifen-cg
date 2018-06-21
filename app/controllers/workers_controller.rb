class WorkersController < ApplicationController
  def index
    @workers = Worker.all
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new(worker_params)
    if @worker.save
      redirect_to workers_path
    else
      render "workers/new"
    end
  end

  def edit
    @worker = Worker.find(params[:id])
  end

  def update
    @worker = Worker.find(params[:id])
    @worker.update(worker_params)
    redirect_to workers_path
  end

  private

  def worker_params
    params.require(:worker).permit(:name)
  end

end
