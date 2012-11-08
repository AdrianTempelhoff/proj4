class TempBasketItemsController < ApplicationController
  # GET /temp_basket_items
  # GET /temp_basket_items.json
  def index
    @temp_basket_items = TempBasketItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @temp_basket_items }
    end
  end

  # GET /temp_basket_items/1
  # GET /temp_basket_items/1.json
  def show
    @temp_basket_item = TempBasketItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @temp_basket_item }
    end
  end

  # GET /temp_basket_items/new
  # GET /temp_basket_items/new.json
  def new
    @temp_basket_item = TempBasketItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @temp_basket_item }
    end
  end

  # GET /temp_basket_items/1/edit
  def edit
    @temp_basket_item = TempBasketItem.find(params[:id])
  end

  # POST /temp_basket_items
  # POST /temp_basket_items.json
  def create
    @temp_basket_item = TempBasketItem.new(params[:temp_basket_item])

    respond_to do |format|
      if @temp_basket_item.save
        format.html { redirect_to @temp_basket_item, notice: 'Temp basket item was successfully created.' }
        format.json { render json: @temp_basket_item, status: :created, location: @temp_basket_item }
      else
        format.html { render action: "new" }
        format.json { render json: @temp_basket_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /temp_basket_items/1
  # PUT /temp_basket_items/1.json
  def update
    @temp_basket_item = TempBasketItem.find(params[:id])

    respond_to do |format|
      if @temp_basket_item.update_attributes(params[:temp_basket_item])
        format.html { redirect_to @temp_basket_item, notice: 'Temp basket item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @temp_basket_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp_basket_items/1
  # DELETE /temp_basket_items/1.json
  def destroy
    @temp_basket_item = TempBasketItem.find(params[:id])
    @temp_basket_item.destroy

    respond_to do |format|
      format.html { redirect_to temp_basket_items_url }
      format.json { head :no_content }
    end
  end
end
