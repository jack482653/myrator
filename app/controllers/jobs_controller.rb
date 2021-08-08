class JobsController < ApplicationController
  def index
    @jobs = Job.where(enabled: true)
  end

  def show
    @job = Job.find(params[:id])
  end
end
