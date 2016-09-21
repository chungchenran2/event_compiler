class EventSjsusController < ApplicationController
  before_action :set_event_sjsu, only: [:show, :edit, :update, :destroy]

  # GET /event_sjsus
  # GET /event_sjsus.json
  def index
    @event_sjsus = EventSjsu.all
  end

  # GET /event_sjsus/1
  # GET /event_sjsus/1.json
  def show
  end

  # GET /event_sjsus/new
  def new
    @event_sjsu = EventSjsu.new
  end

  # GET /event_sjsus/1/edit
  def edit
  end

  # POST /event_sjsus
  # POST /event_sjsus.json
  def create
    @event_sjsu = EventSjsu.new(event_sjsu_params)

    respond_to do |format|
      if @event_sjsu.save
        format.html { redirect_to @event_sjsu, notice: 'Event sjsu was successfully created.' }
        format.json { render :show, status: :created, location: @event_sjsu }
      else
        format.html { render :new }
        format.json { render json: @event_sjsu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_sjsus/1
  # PATCH/PUT /event_sjsus/1.json
  def update
    respond_to do |format|
      if @event_sjsu.update(event_sjsu_params)
        format.html { redirect_to @event_sjsu, notice: 'Event sjsu was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_sjsu }
      else
        format.html { render :edit }
        format.json { render json: @event_sjsu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_sjsus/1
  # DELETE /event_sjsus/1.json
  def destroy
    @event_sjsu.destroy
    respond_to do |format|
      format.html { redirect_to event_sjsus_url, notice: 'Event sjsu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_sjsu
      @event_sjsu = EventSjsu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_sjsu_params
      params.require(:event_sjsu).permit(:title, :body)
    end
end
