class CompanyController < ApplicationController
  before_action :authenticate_user
  before_action :find_companies, only: %i[index]
  before_action :find_company, except: %i[index create new]
  
  def index
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.create(company_params)

    if @company.save
      render :show
    end
  end
  
  def show
  end

  def edit
  end


  def update
    if @company.update(company_params)
      render :show
    end
  end

  def destroy
    if @company.destroy
      render :index
    end
  end

  private
    def company_params
      params.require(:company).permit(:name)
    end

    def find_company
      @company = Company.find(params[:id])
    end

    def find_companies
      @companies = Company.all
    end
end
