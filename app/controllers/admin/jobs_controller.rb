class Admin::JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @company = Company.find(1)
    @job = @company.jobs.new(job_params)

    if @job.save
      redirect_to admin_root_path
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @company = Company.find(1)
    @job = @company.jobs.find(params[:id])

    if @job.update(job_params)
      redirect_to admin_root_path
    else
      render :edit
    end
  end

  def update_enabled
    puts params[:enabled]
    @company = Company.find(1)
    @job = @company.jobs.find(params[:id])
    @job.update(job_params)
  end

  def destroy
    @company = Company.find(1)
    @job = @company.jobs.find(params[:id])
    @job.destroy

    redirect_to admin_root_path
  end

  private

  def job_params
    params.require(:job).permit(:name, :description, :requirement, :welfare, :salary_range, :enabled)
  end
end
