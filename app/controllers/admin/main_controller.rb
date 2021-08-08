class Admin::MainController < ApplicationController
  def index
    @company = Company.find(1)
    @jobs = @company.jobs.all
  end
end
