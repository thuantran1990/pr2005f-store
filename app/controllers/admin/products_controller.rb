class Admin::ProductsController < Admin::ApplicationController
    before_action :find_product, only: [:edit, :update, :destroy, :show]

	def index

        if  params[:type].present?
            Product.restore(params[:type],recursive: true)
            redirect_to admin_products_path
        end
        @products = Product.with_deleted.includes([:product_details, :image_attachments]).all 


	end

    def new       
    	@product = Product.new
    	@product_detail = @product.product_details.build       
    end

    def create 
        pr = product_params.merge(classify: product_params[:classify].to_i, product_type:  product_params[:classify].to_i ) 
        @product = Product.new(pr)
        @product.image.attach(params[:product][:image])
        if @product.save!
            redirect_to admin_products_path
        else
            render 'new'
        end
    end
    def show

        @product_details = @product.product_details
        if @product_details.empty?
            flash[:danger] = ''
            render 'index'
        end
    end    
    def edit
    end

    def update  
        pr = product_params.merge(classify: product_params[:classify].to_i, product_type:  product_params[:classify].to_i )    
        @product.image.destroy_all
        @product.image.attach(params[:product][:image])
        if @product.update(pr)
            flash[:success] = t ".Product_updated"
            redirect_to admin_products_path
        end
    end

    def destroy
         @product.destroy
    end 

    private

    def product_params
        params.require(:product).permit(:name, :classify, :product_type, :image, 
                                        product_details_attributes: [:id, :color, :price, :size, :_destroy])
        
    end

    def find_product
        @product = Product.find_by(id: params[:id])
    end 
  	

end
