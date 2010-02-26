class AdvertiserInfosController < ApplicationController
  # GET /advertiser_infos
  # GET /advertiser_infos.xml
  def index
    @advertiser_infos = AdvertiserInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @advertiser_infos }
    end
  end

  # GET /advertiser_infos/1
  # GET /advertiser_infos/1.xml
  def show
    @advertiser_info = AdvertiserInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @advertiser_info }
    end
  end

  # GET /advertiser_infos/new
  # GET /advertiser_infos/new.xml
  def new
    @advertiser_info = AdvertiserInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @advertiser_info }
    end
  end

  # GET /advertiser_infos/1/edit
  def edit
    @advertiser_info = AdvertiserInfo.find(params[:id])
  end

  # POST /advertiser_infos
  # POST /advertiser_infos.xml
  def create
    @advertiser_info = AdvertiserInfo.new(params[:advertiser_info])

    respond_to do |format|
      if @advertiser_info.save
        flash[:notice] = 'AdvertiserInfo was successfully created.'
        format.html { redirect_to(@advertiser_info) }
        format.xml  { render :xml => @advertiser_info, :status => :created, :location => @advertiser_info }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @advertiser_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /advertiser_infos/1
  # PUT /advertiser_infos/1.xml
  def update
    @advertiser_info = AdvertiserInfo.find(params[:id])

    respond_to do |format|
      if @advertiser_info.update_attributes(params[:advertiser_info])
        flash[:notice] = 'AdvertiserInfo was successfully updated.'
        format.html { redirect_to(@advertiser_info) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @advertiser_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /advertiser_infos/1
  # DELETE /advertiser_infos/1.xml
  def destroy
    @advertiser_info = AdvertiserInfo.find(params[:id])
    @advertiser_info.destroy

    respond_to do |format|
      format.html { redirect_to(advertiser_infos_url) }
      format.xml  { head :ok }
    end
  end
end
