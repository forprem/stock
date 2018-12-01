class StocksController < ApplicationController
    def search
        if params[:stock].present?
            @stock = SStock.new_from_lookup(params[:stock])
            if @stock
                render partial: 'users/result'
                #render "users/my_portfolio"
                #render json: @stock
            else
                flash.now[:danger] = "You have Entered Incorrect Ticker"
                render partial: 'users/result'
            end
        else
            flash.now[:danger] = "Please enter Ticker value"
            render partial: 'users/result'
        end
    end
end