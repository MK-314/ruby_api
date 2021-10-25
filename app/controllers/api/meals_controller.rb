module Api
    class MealsController < ApplicationController
        def index
            meals = Meal.all
            render json: {data: meals}
        end
        # 
        def show
            meal = Meal.find_by(id: params[:id]) 
            
           render json: { 
               id:meal.id,
               strCategory:meal.strCategory,
               strCategoryThumb:meal.strCategoryThumb,
               strCategoryDescription:meal.strCategoryDescription
            }   
        end
        # 
        def create
            meal = Meal.new(meal_params)
            if meal.save
                render json:{data:meal},status: :ok
            else
                render json:{status:"was not saved"}
                
            end
        end
        # 
        def destroy
            meal = Meal.find_by(id: params[:id])
            meal.destroy
            render json:{msg:"meal was destroyed",data:meal}
        end
        # 
        def update
            meal = Meal.find_by(id: params[:id])
            if meal.update(meal_params)
                render json:{msg:"meal was updated",data:meal}
            else
                render json:{msg:"meal WAS NOT updated"}
            end             
        end
    
        private
        def meal_params
            params.permit(:title,:body)
        end
    end
end