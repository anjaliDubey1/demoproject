class AdminsController < ApplicationController
    before_action :set_admin, only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource
    def index
    @admin =Admin.all
    end
  
    def show
    end
  
    def new
     @admin = Admin.new
    end
  
    def create
      @admin = Admin.new(admin_params)
      if @admin.save
       redirect_to admins_path
      else
       render :new
      end
    end
  
    def edit
    end 
  
    def update
      if @admin.update(admin_params)
      redirect_to admins_path
      else
      render :edit
      end
    end
    def destroy
    @admin.destroy
     redirect_to admins_path
    end  
  
   private
    def set_admin
    @admin = Admin.find(params[:id])
    end
    def admin_params
     params.require(:admin).permit(:name,:phone_no,:email,:age,:address)
    end
end
