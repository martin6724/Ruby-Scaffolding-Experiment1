class Scaffolding2ItemsController < ApplicationController
  before_action :set_scaffolding2_item, only: [:show, :edit, :update, :destroy]

  # GET /scaffolding2_items
  # GET /scaffolding2_items.json
  def index
    @scaffolding2_items = Scaffolding2Item.all
  end

  # GET /scaffolding2_items/1
  # GET /scaffolding2_items/1.json
  def show
  end

  # GET /scaffolding2_items/new
  def new
    @scaffolding2_item = Scaffolding2Item.new
  end

  # GET /scaffolding2_items/1/edit
  def edit
  end

  # POST /scaffolding2_items
  # POST /scaffolding2_items.json
  def create
    @scaffolding2_item = Scaffolding2Item.new(scaffolding2_item_params)

    respond_to do |format|
      if @scaffolding2_item.save
        format.html { redirect_to @scaffolding2_item, notice: 'Scaffolding2 item was successfully created.' }
        format.json { render :show, status: :created, location: @scaffolding2_item }
      else
        format.html { render :new }
        format.json { render json: @scaffolding2_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scaffolding2_items/1
  # PATCH/PUT /scaffolding2_items/1.json
  def update
    respond_to do |format|
      if @scaffolding2_item.update(scaffolding2_item_params)
        format.html { redirect_to @scaffolding2_item, notice: 'Scaffolding2 item was successfully updated.' }
        format.json { render :show, status: :ok, location: @scaffolding2_item }
      else
        format.html { render :edit }
        format.json { render json: @scaffolding2_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffolding2_items/1
  # DELETE /scaffolding2_items/1.json
  def destroy
    @scaffolding2_item.destroy
    respond_to do |format|
      format.html { redirect_to scaffolding2_items_url, notice: 'Scaffolding2 item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scaffolding2_item
      @scaffolding2_item = Scaffolding2Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scaffolding2_item_params
      params.require(:scaffolding2_item).permit(:description)
    end
end
