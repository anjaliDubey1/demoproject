class Api::V1::AdminsController < Api::V1::ApiController
    skip_before_action :verify_authenticity_token
    before_action :set_admin, only: [:show, :update, :destroy]
    def index
      @admins = Admin.all
    end
    def show
     
    end
    def create
        @admin = Admin.new(admin_params)
        byebug
        if @admin.save
            render json: {message:"successfully saved", data: @admin}, status: :ok
        else
            render json: {message:"not saved", data: @admin.errors}, status: 422
        end   
    end
    def update
        if @admin.update(admin_params)
            render :update
        else
            render json: {status:"error",message:"not update",data:@admin.errors}
        end
    end
    def destroy
        if @admin.destroy
            redirect_to api_v1_admins_path 
        end
    end
    
    private
    def set_admin
        @admin = Admin.find(params[:id])
    end
    def admin_params
        params.require(:admin).permit(:name,:email,:age,:address, :phone_no)
    end
end