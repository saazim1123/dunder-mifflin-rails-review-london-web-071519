class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def create
        @employee = Employee.create(employee_params)
        if @employee.valid?
           @employee.save
            redirect_to employees_path
        else
            render :new
        end
        # @employee = Employee.new(employee_params)
        # if @blogger.save
        #     redirect_to blogger_path(@blogger)
        # else
        #     render.new

        # end

    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.fin(params[:id])
        @employee.update(employee_params)
        redirect_to employee_path(@employee)
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end
end
