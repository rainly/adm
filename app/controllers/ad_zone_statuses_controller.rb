class AdZoneStatusesController < ApplicationController
  # GET /ad_zone_statuses
  # GET /ad_zone_statuses.xml
  def index
    @ad_zone_statuses = AdZoneStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ad_zone_statuses }
    end
  end

  # GET /ad_zone_statuses/1
  # GET /ad_zone_statuses/1.xml
  def show
    @ad_zone_status = AdZoneStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ad_zone_status }
    end
  end

  # GET /ad_zone_statuses/new
  # GET /ad_zone_statuses/new.xml
  def new
    @ad_zone_status = AdZoneStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ad_zone_status }
    end
  end

  # GET /ad_zone_statuses/1/edit
  def edit
    @ad_zone_status = AdZoneStatus.find(params[:id])
  end

  # POST /ad_zone_statuses
  # POST /ad_zone_statuses.xml
  def create
    @ad_zone_status = AdZoneStatus.new(params[:ad_zone_status])

    respond_to do |format|
      if @ad_zone_status.save
        flash[:notice] = 'AdZoneStatus was successfully created.'
        format.html { redirect_to(@ad_zone_status) }
        format.xml  { render :xml => @ad_zone_status, :status => :created, :location => @ad_zone_status }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ad_zone_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ad_zone_statuses/1
  # PUT /ad_zone_statuses/1.xml
  def update
    @ad_zone_status = AdZoneStatus.find(params[:id])

    respond_to do |format|
      if @ad_zone_status.update_attributes(params[:ad_zone_status])
        flash[:notice] = 'AdZoneStatus was successfully updated.'
        format.html { redirect_to(@ad_zone_status) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ad_zone_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_zone_statuses/1
  # DELETE /ad_zone_statuses/1.xml
  def destroy
    @ad_zone_status = AdZoneStatus.find(params[:id])
    @ad_zone_status.destroy

    respond_to do |format|
      format.html { redirect_to(ad_zone_statuses_url) }
      format.xml  { head :ok }
    end
  end
end
