class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
    @q = Product.ransack(params[:q]);
    @products = @q.result

    #@products.each do |product|
     # category_sql = "SELECT c.name FROM products as p INNER JOIN categories as c ON c.id = p.category_id WHERE c.id = #{product.category_id} limit 1" 
      #@categories = ActiveRecord::Base.connection.exec_query(category_sql)

      #store_sql = "SELECT s.name FROM products as p INNER JOIN stores as s ON s.id = p.store_id WHERE s.id = #{product.store_id} limit 1" 
      #@stores = ActiveRecord::Base.connection.exec_query(store_sql)
    #end
    #if params[:search]
     # @products = Product.search(params[:search].downcase).order("created_at ASC")
    #else
     # @products = Product.all.order('created_at ASC')
    #end
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :color, :size, :price, :store_id, :category_id)
    end
end
