module Api
    class StudentsController < ApplicationController
        def index
            students = Student.all
            render json: {data: students}
        end
        # 
        def show
            student = Student.find_by(id: params[:id]) 
            
           render json: { 
               id:student.id,
               name:student.name,
               description:student.description,
               url:student.url,
               techName:student.techName
            }   
        end
        # 
        def create
            student = Student.new(student_params)
            if student.save
                render json:{data:student},status: :ok
            else
                render json:{status:"was not saved"}
                
            end
        end
        # 
        def destroy
            student = Student.find_by(id: params[:id])
            student.destroy
            render json:{msg:"student was destroyed",data:student}
        end
        # 
        def update
            student = Student.find_by(id: params[:id])
            if student.update(student_params)
                render json:{msg:"student was updated",data:student}
            else
                render json:{msg:"student WAS NOT updated"}
            end             
        end
    
        private
        def student_params
            params.permit(:name,:description,:url,:techName)
        end
    end
end