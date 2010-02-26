class AdZoneCategoriesController < ApplicationController
  # GET /ad_zone_categories
  # GET /ad_zone_categories.xml
  def index
    @ad_zone_categories = AdZoneCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ad_zone_categories }
    end
  end

  # GET /ad_zone_categories/1
  # GET /ad_zone_categories/1.xml
  def show
    @ad_zone_category = AdZoneCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ad_zone_category }
    end
  end

  # GET /ad_zone_categories/new
  # GET /ad_zone_categories/new.xml
  def new
    @ad_zone_category = AdZoneCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ad_zone_category }
    end
  end

  # GET /ad_zone_categories/1/edit
  def edit
    @ad_zone_category = AdZoneCategory.find(params[:id])
  end

  # POST /ad_zone_categories
  # POST /ad_zone_categories.xml
  def create
    @ad_zone_category = AdZoneCategory.new(params[:ad_zone_category])

    respond_to do |format|
      if @ad_zone_category.save
        flash[:notice] = 'AdZoneCategory was successfully created.'
        format.html { redirect_to(@ad_zone_category) }
        format.xml  { render :xml => @ad_zone_category, :status => :created, :location => @ad_zone_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ad_zone_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ad_zone_categories/1
  # PUT /ad_zone_categories/1.xml
  def update
    @ad_zone_category = AdZoneCategory.find(params[:id])

    respond_to do |format|
      if @ad_zone_category.update_attributes(params[:ad_zone_category])
        flash[:notice] = 'AdZoneCategory was successfully updated.'
        format.html { redirect_to(@ad_zone_category) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ad_zone_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_zone_categories/1
  # DELETE /ad_zone_categories/1.xml
  def destroy
    @ad_zone_category = AdZoneCategory.find(params[:id])
    @ad_zone_category.destroy

    respond_to do |format|
      format.html { redirect_to(ad_zone_categories_url) }
      format.xml  { head :ok }
    end
  end
end
