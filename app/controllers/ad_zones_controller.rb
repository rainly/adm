class AdZonesController < ApplicationController
  # GET /ad_zones
  # GET /ad_zones.xml
  def index
    @ad_zones = AdZone.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ad_zones }
    end
  end

  # GET /ad_zones/1
  # GET /ad_zones/1.xml
  def show
    @ad_zone = AdZone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ad_zone }
    end
  end

  # GET /ad_zones/new
  # GET /ad_zones/new.xml
  def new
    @ad_zone = AdZone.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ad_zone }
    end
  end

  # GET /ad_zones/1/edit
  def edit
    @ad_zone = AdZone.find(params[:id])
  end

  # POST /ad_zones
  # POST /ad_zones.xml
  def create
    @ad_zone = AdZone.new(params[:ad_zone])

    respond_to do |format|
      if @ad_zone.save
        flash[:notice] = 'AdZone was successfully created.'
        format.html { redirect_to(@ad_zone) }
        format.xml  { render :xml => @ad_zone, :status => :created, :location => @ad_zone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ad_zone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ad_zones/1
  # PUT /ad_zones/1.xml
  def update
    @ad_zone = AdZone.find(params[:id])

    respond_to do |format|
      if @ad_zone.update_attributes(params[:ad_zone])
        flash[:notice] = 'AdZone was successfully updated.'
        format.html { redirect_to(@ad_zone) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ad_zone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_zones/1
  # DELETE /ad_zones/1.xml
  def destroy
    @ad_zone = AdZone.find(params[:id])
    @ad_zone.destroy

    respond_to do |format|
      format.html { redirect_to(ad_zones_url) }
      format.xml  { head :ok }
    end
  end
end
