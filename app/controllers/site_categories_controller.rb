class SiteCategoriesController < ApplicationController
  # GET /site_categories
  # GET /site_categories.xml
  def index
    @site_categories = SiteCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @site_categories }
    end
  end

  # GET /site_categories/1
  # GET /site_categories/1.xml
  def show
    @site_category = SiteCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @site_category }
    end
  end

  # GET /site_categories/new
  # GET /site_categories/new.xml
  def new
    @site_category = SiteCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @site_category }
    end
  end

  # GET /site_categories/1/edit
  def edit
    @site_category = SiteCategory.find(params[:id])
  end

  # POST /site_categories
  # POST /site_categories.xml
  def create
    @site_category = SiteCategory.new(params[:site_category])

    respond_to do |format|
      if @site_category.save
        flash[:notice] = 'SiteCategory was successfully created.'
        format.html { redirect_to(@site_category) }
        format.xml  { render :xml => @site_category, :status => :created, :location => @site_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @site_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /site_categories/1
  # PUT /site_categories/1.xml
  def update
    @site_category = SiteCategory.find(params[:id])

    respond_to do |format|
      if @site_category.update_attributes(params[:site_category])
        flash[:notice] = 'SiteCategory was successfully updated.'
        format.html { redirect_to(@site_category) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @site_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /site_categories/1
  # DELETE /site_categories/1.xml
  def destroy
    @site_category = SiteCategory.find(params[:id])
    @site_category.destroy

    respond_to do |format|
      format.html { redirect_to(site_categories_url) }
      format.xml  { head :ok }
    end
  end
end
