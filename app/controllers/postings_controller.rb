class PostingsController < ApplicationController
  before_action :set_posting, only: [:show, :edit, :update, :destroy]

  # GET /postings
  # GET /postings.json
  def index
    @postings = Posting.all
    @hash = Gmaps4rails.build_markers(@postings) do |posting, marker|
        marker.lat posting.latitude
        marker.lng posting.longitude
        marker.picture({
              :url => "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=|007FFF|000000",
              :width => 20,
              :height => 33
              })
        marker.json({ title: posting.title, description: posting.description })
    end

    #@posting = Posting.find(params[:id])

    #sets up hash for map marker
    #@hash = Gmaps4rails.build_markers(@posting) do |posting, marker|
    #  marker.lat posting.latitude
    #  marker.lng posting.longitude
    #  marker.infowindow "<a target='blank' href='https://www.google.com/maps/place/"+"#{farm.address}"+"'>Get Directions With Google Maps</a>"
    #  marker.json({ title: posting.title, description: posting.description })
    #end



  end

  # GET /postings/1
  # GET /postings/1.json
  def show
    @users = User.all
  end

  # GET /postings/new
  def new
    @posting = Posting.new
  end

  # GET /postings/1/edit
  def edit
  end

  # POST /postings
  # POST /postings.json
  def create
    @posting = Posting.new(posting_params)

    respond_to do |format|
      if @posting.save
          if params[:image_id].present?
  preloaded = Cloudinary::PreloadedFile.new(params[:image_id])
  raise "Invalid upload signature" if !preloaded.valid?
  @posting.image_id = preloaded.identifier
        end
        format.html { redirect_to @posting, notice: 'Posting was successfully created.' }
        format.json { render :show, status: :created, location: @posting }
      else
        format.html { render :new }
        format.json { render json: @posting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postings/1
  # PATCH/PUT /postings/1.json
  def update
    respond_to do |format|
      if @posting.update(posting_params)
        format.html { redirect_to @posting, notice: 'Posting was successfully updated.' }
        format.json { render :show, status: :ok, location: @posting }
      else
        format.html { render :edit }
        format.json { render json: @posting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postings/1
  # DELETE /postings/1.json
  def destroy
    @posting.destroy
    respond_to do |format|
      format.html { redirect_to postings_url, notice: 'Posting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
		@location = params[:search]
		@distance = params[:km]
		@postings = Posting.near(@location, @distance)

		if @location.empty?
      flash[:error] = "You can't search without a search term; please enter a location and retry!"
			#gflash notice: "You can't search without a search term; please enter a location and retry!"
			redirect_to "/"
		else
			if @postings.length < 1
        flash[:error] = "Sorry! We couldn't find any Poobr's within #{@distance} km of #{@location}."
				#gflash notice: "Sorry! We couldn't find any farms within #{@distance} km of #{@location}."
				redirect_to "/"
			else
				search_map(@postings)
			end
		end

	end



private



  def search_map(postings)
		@postings = postings
		@hash = Gmaps4rails.build_markers(@postings) do |posting, marker|
			  marker.lat posting.latitude
			  marker.lng posting.longitude
        marker.infowindow "<a href='/postings/"+"#{posting.id}"+"'>#{posting.title}</a>"
			  #marker.infowindow "<a href='/postings/"+"#{posting.id}"+"'>#{posting.title}, #{posting.address}</a>"
        marker.picture({
              :url => "https://chart.googleapis.com/chart?chst=d_map_pin_icon&chld=wc|2E9AFE",
              "width" => 20,
              "height" => 33
              })
        marker.json({ title: posting.title, id: posting.id })
		end
	 end


    # Use callbacks to share common setup or constraints between actions.
  def set_posting
      @posting = Posting.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def posting_params
      params.require(:posting).permit(:latitude, :longitude, :address, :description, :title, :infant, :handicap, :shower, :userid, :image_id)
    end

    def gmaps4rails_marker_picture
      {
        "picture" => 'app/assets/images/Shower.png',    # string,  mandatory
        "width" =>  16,          # integer, mandatory
        "height" => 16,          # integer, mandatory
      }
    end
end
