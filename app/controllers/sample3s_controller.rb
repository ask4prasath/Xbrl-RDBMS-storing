class Sample3sController < ApplicationController
  # GET /sample3s
  # GET /sample3s.xml
  def index
    @sample3s = Sample3.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sample3s }
    end
  end

  # GET /sample3s/1
  # GET /sample3s/1.xml
  def show
    @sample3 = Sample3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sample3 }
    end
  end

  # GET /sample3s/new
  # GET /sample3s/new.xml
  def new
    @sample3 = Sample3.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sample3 }
    end
  end

  # GET /sample3s/1/edit
  def edit
    @sample3 = Sample3.find(params[:id])
  end

  # POST /sample3s
  # POST /sample3s.xml
  def create
    @sample3 = Sample3.new(params[:sample3])
    respond_to do |format|
      if @sample3.save
        format.html { redirect_to(@sample3, :notice => 'Sample3 was successfully created.') }
        format.xml  { render :xml => @sample3, :status => :created, :location => @sample3 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sample3.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sample3s/1
  # PUT /sample3s/1.xml
  def update
    @sample3 = Sample3.find(params[:id])

    respond_to do |format|
      if @sample3.update_attributes(params[:sample3])
        format.html { redirect_to(@sample3, :notice => 'Sample3 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sample3.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sample3s/1
  # DELETE /sample3s/1.xml
  def destroy
    @sample3 = Sample3.find(params[:id])
    @sample3.destroy

    respond_to do |format|
      format.html { redirect_to(sample3s_url) }
      format.xml  { head :ok }
    end
  end
end
