class CheckinController < ApplicationController

	def index
	    @checkins = Checkin.all

	    respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @checkins }
	    end	

	end
  def show
    @checkin = Checkin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @checkin }
    end
  end

  # GET /checked_ins/new
  # GET /checked_ins/new.json
  def new
    @checkin = Checkin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @checkin }
    end
  end

  # GET /checked_ins/1/edit
  def edit
    @checkin = Checkin.find(params[:id])
  end

  # POST /checked_ins
  # POST /checked_ins.json
  def create
    @checkin = Checkin.new(params[:checkin])

    respond_to do |format|
      if @checkin.save
        format.html { redirect_to @checkin, notice: 'Checked in was successfully created.' }
        format.json { render json: @checkin, status: :created, location: @checkin }
      else
        format.html { render action: "new" }
        format.json { render json: @checkin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /checked_ins/1
  # PUT /checked_ins/1.json
  def update
    @checkin = Checkin.find(params[:id])

    respond_to do |format|
      if @checkin.update_attributes(params[:checkin])
        format.html { redirect_to @checkin, notice: 'Checked in was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @checkin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checked_ins/1
  # DELETE /checked_ins/1.json
  def destroy
    @checkin = Checkin.find(params[:id])
    @checkin.destroy

    respond_to do |format|
      format.html { redirect_to checkins_url }
      format.json { head :no_content }
    end
  end
end