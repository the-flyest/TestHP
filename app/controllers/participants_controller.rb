class ParticipantsController < ApplicationController
  # GET /participants
  # GET /participants.json
  http_basic_authenticate_with :name => "bheinric", :password => "warumrappstdu" , :except => [:new, :create, :update]
  
  def index
    @participants = Participant.all

    respond_to do |format|
      format.html # index.html.erb
      #format.json { render json: @participants }
    end
  end

  # GET /participants/1
  # GET /participants/1.json
  def show
    @participant = Participant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      #format.json { render json: @participant }
    end
  end

  # GET /participants/new
  # GET /participants/new.json
  def new
    @participant = Participant.new
    respond_to do |format|
      format.html # new.html.erb
      #format.json { render json: @participant }
    end
  end

  # GET /participants/1/edit
  def edit
    @participant = Participant.find(params[:id])
  end

  # POST /participants
  # POST /participants.json
  def create
   @participant = Participant.find(session[:id])
   #@participant[:res2] = 'qw'

    respond_to do |format|
      if @participant.save and session[:cmd_nr] < 6
        session[:cmd_nr]+=1
        format.html { redirect_to :back}
        #format.json { render json: @participant, status: :created, location: @participant }
      elsif @participant.save and session[:cmd_nr] == 6
        session[:cmd_nr]+=1
        format.html { redirect_to "/rating/final_rating" }
      elsif @participant.save and session[:cmd_nr] == 7
        format.html { redirect_to "/rating/end_page" }
        #format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /participants/1
  # PUT /participants/1.json
  def update
  #  @participant = Participant.find(session[:id])
    
   @participant = Participant.find(params[:id])

    respond_to do |format|
      if @participant.update_attributes(params[:participant]) and session[:cmd_nr] < 6
        session[:cmd_nr]+=1
        format.html { redirect_to :back }
        #format.json { head :no_content }
      elsif @participant.update_attributes(params[:participant]) and session[:cmd_nr] == 6
        session[:cmd_nr]+=1
        format.html { redirect_to "/rating/final_rating" }
      elsif @participant.update_attributes(params[:participant]) and session[:cmd_nr] == 7
        format.html { redirect_to "/rating/end_page" }
      #else
        #format.html { render action: "edit" }
        #format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participants/1
  # DELETE /participants/1.json
  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy

    respond_to do |format|
      format.html { redirect_to participants_url }
      #format.json { head :no_content }
    end
  end
end
