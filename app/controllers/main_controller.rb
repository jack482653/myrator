class MainController < ApplicationController
  def index
    @companies = Company.where(enabled: true).sample(10)
    @jobs = Job.where(enabled: true).sample(10)
  end
end
