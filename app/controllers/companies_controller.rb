class CompaniesController < ApplicationController
  def index
    @companies = Company.where(enabled: true)
  end

  def show
    @company = Company.find(params[:id])
    @jobs = @company.jobs.where(enabled: true)
  end
end
