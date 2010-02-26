class AdZoneTypesController < ApplicationController
  # GET /ad_zone_types
  # GET /ad_zone_types.xml
  def index
    @ad_zone_types = AdZoneType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ad_zone_types }
    end
  end

  # GET /ad_zone_types/1
  # GET /ad_zone_types/1.xml
  def show
    @ad_zone_type = AdZoneType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ad_zone_type }
    end
  end

  # GET /ad_zone_types/new
  # GET /ad_zone_types/new.xml
  def new
    @ad_zone_type = AdZoneType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ad_zone_type }
    end
  end

  # GET /ad_zone_types/1/edit
  def edit
    @ad_zone_type = AdZoneType.find(params[:id])
  end

  # POST /ad_zone_types
  # POST /ad_zone_types.xml
  def create
    @ad_zone_type = AdZoneType.new(params[:ad_zone_type])

    respond_to do |format|
      if @ad_zone_type.save
        flash[:notice] = 'AdZoneType was successfully created.'
        format.html { redirect_to(@ad_zone_type) }
        format.xml  { render :xml => @ad_zone_type, :status => :created, :location => @ad_zone_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ad_zone_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ad_zone_types/1
  # PUT /ad_zone_types/1.xml
  def update
    @ad_zone_type = AdZoneType.find(params[:id])

    respond_to do |format|
      if @ad_zone_type.update_attributes(params[:ad_zone_type])
        flash[:notice] = 'AdZoneType was successfully updated.'
        format.html { redirect_to(@ad_zone_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ad_zone_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_zone_types/1
  # DELETE /ad_zone_types/1.xml
  def destroy
    @ad_zone_type = AdZoneType.find(params[:id])
    @ad_zone_type.destroy

    respond_to do |format|
      format.html { redirect_to(ad_zone_types_url) }
      format.xml  { head :ok }
    end
  end
end
