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

    if params.has_key?(:search_category)
      @selection = params[:search_category]
    end

    @results = []

    if params[:search_bar]
      if @selection == "1"
        @search = RecyclingPlant.search(params[:search_bar])
        if @search.present?
          @results = @search.map(&:name)
        else
          @results = ["No results"]
        end
      elsif @selection == "2"
        @search = Item.search(params[:search_bar])
        if @search.present?
          @results = @search.map(&:name)
        else
          @results = ["No results"]
        end
      elsif @selection == "3"
        @search = Category.search(params[:search_bar])
        if @search.present?
          @results = @search.map(&:name)
        else
          @results = ["No results"]
        end
      end
    end
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
