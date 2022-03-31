class FoodsController < ApplicationController
    
    get '/foods' do
      foods = Food.all
      foods.to_json
    end
  
    get "/foods/:id" do 
      food = Food.find(params[:id])
      food.to_json
    end

    post '/foods/new' do
      food = Food.create(
        name: params[:name],
        price: params[:price],
        category_id: params[:category_id],
        description: params[:description]
      )
      food.to_json
    end

    patch '/foods/:id/edit' do
      food = Food.find(params[:id])
      food.update(
        name: params[:name],
        price: params[:price],
        category_id: params[:category_id],
        description: params[:description]
      )
    end
end