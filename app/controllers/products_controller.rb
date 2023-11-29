class ProductsController < ApplicationController
    before_action :authenticate_user!

    def create
        @customer = Customer.find(params[:customer_id])
        @product = @customer.products.create(product_params)
        redirect_to customer_path(@customer)
    end

    def destroy
        @customer = Customer.find(params[:customer_id])
    
        @product = @customer.products.find(params[:id])
    
        @product.destroy
        redirect_to customer_path(@customer), notice: 'Product was successfully deleted.'
    end
    
    private
        
    def product_params
        params.require(:product).permit(:name, :price, :quantity)
    end
end
