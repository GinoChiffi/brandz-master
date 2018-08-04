class DesignersController < ApplicationController
  before_action :set_designer, only: [:show, :edit, :update, :destroy]
  before_action :correct_brand, only: [:edit, :update,:destroy]
  before_action :authenticate_brand!, except: [:index, :show]

  # GET /designers
  # GET /designers.json
  def index
    @designers = Designer.all
  end

  # GET /designers/1
  # GET /designers/1.json
  def show
  end

  # GET /designers/new
  def new
    @designer = current_brand.designers.build
  end

  # GET /designers/1/edit
  def edit
  end

  # POST /designers
  # POST /designers.json
  def create
    @designer = current_brand.designers.build(designer_params)

    respond_to do |format|
      if @designer.save
        format.html { redirect_to brand_path(current_brand.name), notice: 'Designer was successfully created.' }
        format.json { render :show, status: :created, location: @designer }
      else
        format.html { render :new }
        format.json { render json: @designer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /designers/1
  # PATCH/PUT /designers/1.json
  def update
    respond_to do |format|
      if @designer.update(designer_params)
        format.html { redirect_to brand_path(current_brand.name), notice: 'Designer was successfully updated.' }
        format.json { render :show, status: :ok, location: @designer }
      else
        format.html { render :edit }
        format.json { render json: @designer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designers/1
  # DELETE /designers/1.json
  def destroy
    @designer.destroy
    respond_to do |format|
      format.html { redirect_to brand_path(current_brand.name), notice: 'Designer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_designer
      @designer = Designer.find(params[:id])
    end

    def correct_brand
      @designer = current_brand.designers.find_by(id: params[:id])
      redirect_to designers_path, notice: 'Not authorized to edit this article' if @designer.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def designer_params
      params.require(:designer).permit(:name, :bio, :avatar)
    end
end
