class AdBoardsController < ApplicationController
  # GET /ad_boards
  # GET /ad_boards.xml
  def index
    @ad_boards = AdBoard.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ad_boards }
    end
  end

  # GET /ad_boards/1
  # GET /ad_boards/1.xml
  def show
    @ad_board = AdBoard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ad_board }
    end
  end

  # GET /ad_boards/new
  # GET /ad_boards/new.xml
  def new
    @ad_board = AdBoard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ad_board }
    end
  end

  # GET /ad_boards/1/edit
  def edit
    @ad_board = AdBoard.find(params[:id])
  end

  # POST /ad_boards
  # POST /ad_boards.xml
  def create
    @ad_board = AdBoard.new(params[:ad_board])

    respond_to do |format|
      if @ad_board.save
        flash[:notice] = 'AdBoard was successfully created.'
        format.html { redirect_to(@ad_board) }
        format.xml  { render :xml => @ad_board, :status => :created, :location => @ad_board }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ad_board.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ad_boards/1
  # PUT /ad_boards/1.xml
  def update
    @ad_board = AdBoard.find(params[:id])

    respond_to do |format|
      if @ad_board.update_attributes(params[:ad_board])
        flash[:notice] = 'AdBoard was successfully updated.'
        format.html { redirect_to(@ad_board) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ad_board.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_boards/1
  # DELETE /ad_boards/1.xml
  def destroy
    @ad_board = AdBoard.find(params[:id])
    @ad_board.destroy

    respond_to do |format|
      format.html { redirect_to(ad_boards_url) }
      format.xml  { head :ok }
    end
  end
end
