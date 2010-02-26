class AdBoardsCampaignsController < ApplicationController
  # GET /ad_boards_campaigns
  # GET /ad_boards_campaigns.xml
  def index
    @ad_boards_campaigns = AdBoardsCampaign.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ad_boards_campaigns }
    end
  end

  # GET /ad_boards_campaigns/1
  # GET /ad_boards_campaigns/1.xml
  def show
    @ad_boards_campaign = AdBoardsCampaign.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ad_boards_campaign }
    end
  end

  # GET /ad_boards_campaigns/new
  # GET /ad_boards_campaigns/new.xml
  def new
    @ad_boards_campaign = AdBoardsCampaign.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ad_boards_campaign }
    end
  end

  # GET /ad_boards_campaigns/1/edit
  def edit
    @ad_boards_campaign = AdBoardsCampaign.find(params[:id])
  end

  # POST /ad_boards_campaigns
  # POST /ad_boards_campaigns.xml
  def create
    @ad_boards_campaign = AdBoardsCampaign.new(params[:ad_boards_campaign])

    respond_to do |format|
      if @ad_boards_campaign.save
        flash[:notice] = 'AdBoardsCampaign was successfully created.'
        format.html { redirect_to(@ad_boards_campaign) }
        format.xml  { render :xml => @ad_boards_campaign, :status => :created, :location => @ad_boards_campaign }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ad_boards_campaign.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ad_boards_campaigns/1
  # PUT /ad_boards_campaigns/1.xml
  def update
    @ad_boards_campaign = AdBoardsCampaign.find(params[:id])

    respond_to do |format|
      if @ad_boards_campaign.update_attributes(params[:ad_boards_campaign])
        flash[:notice] = 'AdBoardsCampaign was successfully updated.'
        format.html { redirect_to(@ad_boards_campaign) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ad_boards_campaign.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_boards_campaigns/1
  # DELETE /ad_boards_campaigns/1.xml
  def destroy
    @ad_boards_campaign = AdBoardsCampaign.find(params[:id])
    @ad_boards_campaign.destroy

    respond_to do |format|
      format.html { redirect_to(ad_boards_campaigns_url) }
      format.xml  { head :ok }
    end
  end
end
