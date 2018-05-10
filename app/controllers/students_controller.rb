class StudentsController < ApplicationController
    def index
        @dojo = Dojo.find(params[:id])
        @student = Student.find(params[:student_id])
        date = @student.created_at
        @cohort = Student.where(created_at: date.midnight..date.end_of_day, dojo_id:@dojo).where.not(id:@student)
        render "index"
    end
    def edit
        @dojos = Dojo.all
        @dojo = Dojo.find(params[:id])
        @student = Student.find(params[:student_id])
        @students = Student.all
    end
    def update
        dojo= Dojo.find(params[:id])
        student = Student.find(params[:student_id])
        student.first_name = params[:first_name]
        student.last_name = params[:last_name]
        student.email = params[:email]
        student.dojo_id = params[:dojo_id]
        student.save
        redirect_to '/dojos'
    end

    def new
        @dojos= Dojo.all
    end
    
    def create
        student = Student.create(first_name:params[:first_name], last_name:params[:last_name],email:params[:emal],dojo_id:params[:dojo_id])
        redirect_to '/dojos'
    end

    def destroy
        student = Student.find(params[:student_id])
        student.destroy
        redirect_to '/dojos'
    end
end
