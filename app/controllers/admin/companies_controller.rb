class Admin::CompaniesController < ApplicationController
  def edit
    @company = Company.find(1)
  end

  def update
    @company = Company.find(1)

    if @company.update(company_params)
      redirect_to @company
    else
      render :edit
    end
  end

  def destroy
    @company = Company.find(1)
    @company.destroy

    redirect_to root_path
  end

  private

  def company_params
    params.require(:company).permit(:name, :introduction, :vision, :news, :salary_welfare, :enabled)
  end
end
