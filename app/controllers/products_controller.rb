class ProductsController < ApplicationController

    def index
        if @cart == nil
            @cart = session[:cart] || []
        else
            @cart
        end
    end

    def add
        @product = Product.create(params[:name])
        @cart << @product
        redirect_to all_products_path
    end
end