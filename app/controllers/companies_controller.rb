class CompaniesController < ApplicationController
  before_action :set_company, only: %i[show edit update destroy]
 

    def index
        @companies = Company.all
    end

    def new 
      @company =Company.new
    
    end

    def create
      @company =Company.new(companie_params)
      if @company.save
        redirect_to companies_path ,notice: "create successfully"
      else
        render
      end
    end

    def show
    end

    def edit
    end

    def update
       if @company.update(company_params)
           redirect_to @company, notice: "update successfully"
       else
           render :index
       end
    end
    def destroy
      @company.destroy
       redirect_to companies_path,notice: " delete successfully"
    end
 
   private
    def company_params
       params.require(:company).permit(:name, :location, :technology)
    end
 
    def set_company
       @company=Company.find(params[:id]) 
    end
      
end