class CabinetItemsController < ApplicationController
  # GET /cabinet_items
  # GET /cabinet_items.json
  def index
    @cabinet_items = CabinetItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cabinet_items }
    end
  end

  # GET /cabinet_items/1
  # GET /cabinet_items/1.json
  def show
    @cabinet_item = CabinetItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cabinet_item }
    end
  end

  # GET /cabinet_items/new
  # GET /cabinet_items/new.json
  def new
    @cabinet_item = CabinetItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cabinet_item }
    end
  end

  # GET /cabinet_items/1/edit
  def edit
    @cabinet_item = CabinetItem.find(params[:id])
  end

  # POST /cabinet_items
  # POST /cabinet_items.json
  def create
    @cabinet_item = CabinetItem.new(params[:cabinet_item])

    respond_to do |format|
      if @cabinet_item.save
        format.html { redirect_to @cabinet_item, notice: 'Cabinet item was successfully created.' }
        format.json { render json: @cabinet_item, status: :created, location: @cabinet_item }
      else
        format.html { render action: "new" }
        format.json { render json: @cabinet_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cabinet_items/1
  # PUT /cabinet_items/1.json
  def update
    @cabinet_item = CabinetItem.find(params[:id])

    respond_to do |format|
      if @cabinet_item.update_attributes(params[:cabinet_item])
        format.html { redirect_to @cabinet_item, notice: 'Cabinet item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cabinet_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cabinet_items/1
  # DELETE /cabinet_items/1.json
  def destroy
    @cabinet_item = CabinetItem.find(params[:id])
    @cabinet_item.destroy

    respond_to do |format|
      format.html { redirect_to cabinet_items_url }
      format.json { head :no_content }
    end
  end
end
