class StocksController < ApplicationController
    def search
       @stock = SStock.new_from_lookup(params[:stock])
       render "users/my_portfolio"
       #render json: @stock
    end
end