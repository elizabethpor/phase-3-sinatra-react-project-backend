class CategoriesController < ApplicationController
    
    get "/categories" do 
      categories = Category.all
      categories.to_json
    end
    
    get "/categories/:id" do
      category = Category.find(params[:id])
      category.to_json(include: [:foods])
    end
  
    get "/foods/:id" do 
      food = Food.find(params[:id])
      food.to_json
    end

    
    
end