class TempBasketsController < ApplicationController
  # GET /temp_baskets
  # GET /temp_baskets.json
  def index
    @temp_baskets = TempBasket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @temp_baskets }
    end
  end

  # GET /temp_baskets/1
  # GET /temp_baskets/1.json
  def show
    @temp_basket = TempBasket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @temp_basket }
    end
  end

  # GET /temp_baskets/new
  # GET /temp_baskets/new.json
  def new
    @temp_basket = TempBasket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @temp_basket }
    end
  end

  # GET /temp_baskets/1/edit
  def edit
    @temp_basket = TempBasket.find(params[:id])
  end

  # POST /temp_baskets
  # POST /temp_baskets.json
  def create
    @temp_basket = TempBasket.new(params[:temp_basket])

    respond_to do |format|
      if @temp_basket.save
        format.html { redirect_to @temp_basket, notice: 'Temp basket was successfully created.' }
        format.json { render json: @temp_basket, status: :created, location: @temp_basket }
      else
        format.html { render action: "new" }
        format.json { render json: @temp_basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /temp_baskets/1
  # PUT /temp_baskets/1.json
  def update
    @temp_basket = TempBasket.find(params[:id])

    respond_to do |format|
      if @temp_basket.update_attributes(params[:temp_basket])
        format.html { redirect_to @temp_basket, notice: 'Temp basket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @temp_basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp_baskets/1
  # DELETE /temp_baskets/1.json
  def destroy
    @temp_basket = TempBasket.find(params[:id])
    @temp_basket.destroy

    respond_to do |format|
      format.html { redirect_to temp_baskets_url }
      format.json { head :no_content }
    end
  end
end
