class ChargeCptsController < ApplicationController
  # GET /charge_cpts
  # GET /charge_cpts.xml
  def index
    @charge_cpts = ChargeCpt.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @charge_cpts }
    end
  end

  # GET /charge_cpts/1
  # GET /charge_cpts/1.xml
  def show
    @charge_cpt = ChargeCpt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @charge_cpt }
    end
  end

  # GET /charge_cpts/new
  # GET /charge_cpts/new.xml
  def new
    @charge_cpt = ChargeCpt.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @charge_cpt }
    end
  end

  # GET /charge_cpts/1/edit
  def edit
    @charge_cpt = ChargeCpt.find(params[:id])
  end

  # POST /charge_cpts
  # POST /charge_cpts.xml
  def create
    @charge_cpt = ChargeCpt.new(params[:charge_cpt])

    respond_to do |format|
      if @charge_cpt.save
        flash[:notice] = 'ChargeCpt was successfully created.'
        format.html { redirect_to(@charge_cpt) }
        format.xml  { render :xml => @charge_cpt, :status => :created, :location => @charge_cpt }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @charge_cpt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /charge_cpts/1
  # PUT /charge_cpts/1.xml
  def update
    @charge_cpt = ChargeCpt.find(params[:id])

    respond_to do |format|
      if @charge_cpt.update_attributes(params[:charge_cpt])
        flash[:notice] = 'ChargeCpt was successfully updated.'
        format.html { redirect_to(@charge_cpt) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @charge_cpt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /charge_cpts/1
  # DELETE /charge_cpts/1.xml
  def destroy
    @charge_cpt = ChargeCpt.find(params[:id])
    @charge_cpt.destroy

    respond_to do |format|
      format.html { redirect_to(charge_cpts_url) }
      format.xml  { head :ok }
    end
  end
end
