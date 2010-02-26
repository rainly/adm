class DisplayZonesController < ApplicationController
  # GET /display_zones
  # GET /display_zones.xml
  def index
    @display_zones = DisplayZone.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @display_zones }
    end
  end

  # GET /display_zones/1
  # GET /display_zones/1.xml
  def show
    @display_zone = DisplayZone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @display_zone }
    end
  end

  # GET /display_zones/new
  # GET /display_zones/new.xml
  def new
    @display_zone = DisplayZone.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @display_zone }
    end
  end

  # GET /display_zones/1/edit
  def edit
    @display_zone = DisplayZone.find(params[:id])
  end

  # POST /display_zones
  # POST /display_zones.xml
  def create
    @display_zone = DisplayZone.new(params[:display_zone])

    respond_to do |format|
      if @display_zone.save
        flash[:notice] = 'DisplayZone was successfully created.'
        format.html { redirect_to(@display_zone) }
        format.xml  { render :xml => @display_zone, :status => :created, :location => @display_zone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @display_zone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /display_zones/1
  # PUT /display_zones/1.xml
  def update
    @display_zone = DisplayZone.find(params[:id])

    respond_to do |format|
      if @display_zone.update_attributes(params[:display_zone])
        flash[:notice] = 'DisplayZone was successfully updated.'
        format.html { redirect_to(@display_zone) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @display_zone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /display_zones/1
  # DELETE /display_zones/1.xml
  def destroy
    @display_zone = DisplayZone.find(params[:id])
    @display_zone.destroy

    respond_to do |format|
      format.html { redirect_to(display_zones_url) }
      format.xml  { head :ok }
    end
  end
end
