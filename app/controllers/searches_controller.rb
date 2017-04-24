class SearchesController < ApplicationController
  before_action :set_search, only: [:show, :edit, :update, :destroy]

  # GET /searches
  # GET /searches.json
  def index
    @searches = Search.all
    @glass_examples = Item.where({category: 'glass'})
    @plastic_examples = Item.where({category: 'plastic'})
    @papers_examples = Item.where({category: 'papers'})
    @metals_examples = Item.where({category: 'metals'})
    @chemicals_oil_examples = Item.where({category: 'chemicals/oil'})
    @hazardous_examples = Item.where({category: 'hazardous'})
    @electronics_examples = Item.where({category: 'electronics'})
    @ebl_examples = Item.where({category: 'ewaste/batteries/lights'})
    @organic_examples = Item.where({category: 'organic'})
    @bulk_examples = Item.where({category: 'bulk'})
    @pharmaceuticals_examples = Item.where({category: 'pharmaceuticals'})
    @mixed_examples = Item.where({category: 'mixed'})
    @other_examples = Item.where({category: 'other'})
  end

  def get_ajx
    all_items = Item.all()
    all_cats = Category.all()
    all_centers = RecyclingPlant.all()

    items_arr = Array.new

    all_items.each do |item|
      arr_item = Hash.new
      arr_item["category"] = item.category
      arr_item["name"] = item.name
      arr_item["item_id"] = item.item_id
      items_arr.push(arr_item)
    end

    all_cats.each do |cat|
      arr_item = Hash.new
      arr_item["name"] = cat.name
      arr_item["category_id"] = cat.category_id
      items_arr.push(arr_item)
    end

    all_centers.each do |cat|
      arr_item = Hash.new
      arr_item["name"] = cat.name
      arr_item["plant_id"] = cat.plant_id
      items_arr.push(arr_item)
    end

    render :json => items_arr, :status => :ok
  end

  def get_ajx_item_infos
    all_items = Item.all()

    items_arr = Array.new

    all_items.each do |item|
      arr_item = Hash.new
      arr_item["info"] = item.info
      arr_item["item_id"] = item.item_id
      items_arr.push(arr_item)
    end

    render :json => items_arr, :status => :ok
  end

  # GET /searches/1
  # GET /searches/1.json
  def show
  end

  # GET /searches/new
  def new
    @search = Search.new
  end

  # GET /searches/1/edit
  def edit
  end

  # POST /searches
  # POST /searches.json
  def create
    @search = Search.new(search_params)

    respond_to do |format|
      if @search.save
        format.html { redirect_to @search, notice: 'Search was successfully created.' }
        format.json { render :show, status: :created, location: @search }
      else
        format.html { render :new }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /searches/1
  # PATCH/PUT /searches/1.json
  def update
    respond_to do |format|
      if @search.update(search_params)
        format.html { redirect_to @search, notice: 'Search was successfully updated.' }
        format.json { render :show, status: :ok, location: @search }
      else
        format.html { render :edit }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searches/1
  # DELETE /searches/1.json
  def destroy
    @search.destroy
    respond_to do |format|
      format.html { redirect_to searches_url, notice: 'Search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search
      @search = Search.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_params
      params.require(:search).permit(:text, :zip)
    end
end
