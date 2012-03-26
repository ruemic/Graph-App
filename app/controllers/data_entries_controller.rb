class DataEntriesController < ApplicationController
  # GET /data_entries
  # GET /data_entries.json
  def index
    @data_entries = DataEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @data_entries }
    end
  end

  # GET /data_entries/1
  # GET /data_entries/1.json
  def show
    @data_entry = DataEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @data_entry }
    end
  end

  # GET /data_entries/new
  # GET /data_entries/new.json
  def new
    @data_entry = DataEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @data_entry }
    end
  end

  # GET /data_entries/1/edit
  def edit
    @data_entry = DataEntry.find(params[:id])
  end

  # POST /data_entries
  # POST /data_entries.json
  def create
    @data_entry = DataEntry.new(params[:data_entry])

    respond_to do |format|
      if @data_entry.save
        format.html { redirect_to @data_entry, notice: 'Data entry was successfully created.' }
        format.json { render json: @data_entry, status: :created, location: @data_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @data_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /data_entries/1
  # PUT /data_entries/1.json
  def update
    @data_entry = DataEntry.find(params[:id])

    respond_to do |format|
      if @data_entry.update_attributes(params[:data_entry])
        format.html { redirect_to @data_entry, notice: 'Data entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @data_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_entries/1
  # DELETE /data_entries/1.json
  def destroy
    @data_entry = DataEntry.find(params[:id])
    @data_entry.destroy

    respond_to do |format|
      format.html { redirect_to data_entries_url }
      format.json { head :no_content }
    end
  end

  def filter
    minimum = params[:minimum] || 0
    @data_entries = DataEntry.where(:weight => 100..155)
   

    respond_to do |format|
      format.html # filter.html.erb
      format.json { render json: @data_entries }
    end
  end



end




