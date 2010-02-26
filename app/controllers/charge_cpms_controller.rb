class ChargeCpmsController < ApplicationController
  # GET /charge_cpms
  # GET /charge_cpms.xml
  def index
    @charge_cpms = ChargeCpm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @charge_cpms }
    end
  end

  # GET /charge_cpms/1
  # GET /charge_cpms/1.xml
  def show
    @charge_cpm = ChargeCpm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @charge_cpm }
    end
  end

  # GET /charge_cpms/new
  # GET /charge_cpms/new.xml
  def new
    @charge_cpm = ChargeCpm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @charge_cpm }
    end
  end

  # GET /charge_cpms/1/edit
  def edit
    @charge_cpm = ChargeCpm.find(params[:id])
  end

  # POST /charge_cpms
  # POST /charge_cpms.xml
  def create
    @charge_cpm = ChargeCpm.new(params[:charge_cpm])

    respond_to do |format|
      if @charge_cpm.save
        flash[:notice] = 'ChargeCpm was successfully created.'
        format.html { redirect_to(@charge_cpm) }
        format.xml  { render :xml => @charge_cpm, :status => :created, :location => @charge_cpm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @charge_cpm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /charge_cpms/1
  # PUT /charge_cpms/1.xml
  def update
    @charge_cpm = ChargeCpm.find(params[:id])

    respond_to do |format|
      if @charge_cpm.update_attributes(params[:charge_cpm])
        flash[:notice] = 'ChargeCpm was successfully updated.'
        format.html { redirect_to(@charge_cpm) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @charge_cpm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /charge_cpms/1
  # DELETE /charge_cpms/1.xml
  def destroy
    @charge_cpm = ChargeCpm.find(params[:id])
    @charge_cpm.destroy

    respond_to do |format|
      format.html { redirect_to(charge_cpms_url) }
      format.xml  { head :ok }
    end
  end
end
