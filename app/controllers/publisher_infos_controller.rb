class PublisherInfosController < ApplicationController
  # GET /publisher_infos
  # GET /publisher_infos.xml
  def index
    @publisher_infos = PublisherInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @publisher_infos }
    end
  end

  # GET /publisher_infos/1
  # GET /publisher_infos/1.xml
  def show
    @publisher_info = PublisherInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @publisher_info }
    end
  end

  # GET /publisher_infos/new
  # GET /publisher_infos/new.xml
  def new
    @publisher_info = PublisherInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @publisher_info }
    end
  end

  # GET /publisher_infos/1/edit
  def edit
    @publisher_info = PublisherInfo.find(params[:id])
  end

  # POST /publisher_infos
  # POST /publisher_infos.xml
  def create
    @publisher_info = PublisherInfo.new(params[:publisher_info])

    respond_to do |format|
      if @publisher_info.save
        flash[:notice] = 'PublisherInfo was successfully created.'
        format.html { redirect_to(@publisher_info) }
        format.xml  { render :xml => @publisher_info, :status => :created, :location => @publisher_info }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @publisher_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /publisher_infos/1
  # PUT /publisher_infos/1.xml
  def update
    @publisher_info = PublisherInfo.find(params[:id])

    respond_to do |format|
      if @publisher_info.update_attributes(params[:publisher_info])
        flash[:notice] = 'PublisherInfo was successfully updated.'
        format.html { redirect_to(@publisher_info) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @publisher_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /publisher_infos/1
  # DELETE /publisher_infos/1.xml
  def destroy
    @publisher_info = PublisherInfo.find(params[:id])
    @publisher_info.destroy

    respond_to do |format|
      format.html { redirect_to(publisher_infos_url) }
      format.xml  { head :ok }
    end
  end
end
