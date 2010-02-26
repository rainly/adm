class OrderStatusesController < ApplicationController
  # GET /order_statuses
  # GET /order_statuses.xml
  def index
    @order_statuses = OrderStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @order_statuses }
    end
  end

  # GET /order_statuses/1
  # GET /order_statuses/1.xml
  def show
    @order_status = OrderStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order_status }
    end
  end

  # GET /order_statuses/new
  # GET /order_statuses/new.xml
  def new
    @order_status = OrderStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @order_status }
    end
  end

  # GET /order_statuses/1/edit
  def edit
    @order_status = OrderStatus.find(params[:id])
  end

  # POST /order_statuses
  # POST /order_statuses.xml
  def create
    @order_status = OrderStatus.new(params[:order_status])

    respond_to do |format|
      if @order_status.save
        flash[:notice] = 'OrderStatus was successfully created.'
        format.html { redirect_to(@order_status) }
        format.xml  { render :xml => @order_status, :status => :created, :location => @order_status }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @order_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /order_statuses/1
  # PUT /order_statuses/1.xml
  def update
    @order_status = OrderStatus.find(params[:id])

    respond_to do |format|
      if @order_status.update_attributes(params[:order_status])
        flash[:notice] = 'OrderStatus was successfully updated.'
        format.html { redirect_to(@order_status) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @order_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /order_statuses/1
  # DELETE /order_statuses/1.xml
  def destroy
    @order_status = OrderStatus.find(params[:id])
    @order_status.destroy

    respond_to do |format|
      format.html { redirect_to(order_statuses_url) }
      format.xml  { head :ok }
    end
  end
end
