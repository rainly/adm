class TargetDefsController < ApplicationController
  # GET /target_defs
  # GET /target_defs.xml
  def index
    @target_defs = TargetDef.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @target_defs }
    end
  end

  # GET /target_defs/1
  # GET /target_defs/1.xml
  def show
    @target_def = TargetDef.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @target_def }
    end
  end

  # GET /target_defs/new
  # GET /target_defs/new.xml
  def new
    @target_def = TargetDef.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @target_def }
    end
  end

  # GET /target_defs/1/edit
  def edit
    @target_def = TargetDef.find(params[:id])
  end

  # POST /target_defs
  # POST /target_defs.xml
  def create
    @target_def = TargetDef.new(params[:target_def])

    respond_to do |format|
      if @target_def.save
        flash[:notice] = 'TargetDef was successfully created.'
        format.html { redirect_to(@target_def) }
        format.xml  { render :xml => @target_def, :status => :created, :location => @target_def }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @target_def.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /target_defs/1
  # PUT /target_defs/1.xml
  def update
    @target_def = TargetDef.find(params[:id])

    respond_to do |format|
      if @target_def.update_attributes(params[:target_def])
        flash[:notice] = 'TargetDef was successfully updated.'
        format.html { redirect_to(@target_def) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @target_def.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /target_defs/1
  # DELETE /target_defs/1.xml
  def destroy
    @target_def = TargetDef.find(params[:id])
    @target_def.destroy

    respond_to do |format|
      format.html { redirect_to(target_defs_url) }
      format.xml  { head :ok }
    end
  end
end
