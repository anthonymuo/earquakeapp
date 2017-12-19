class EarthmovesPastDaysController < ApplicationController
  before_action :set_earthmoves_past_day, only: [:show, :edit, :update, :destroy]

  # GET /earthmoves_past_days
  # GET /earthmoves_past_days.json
  def index
    @earthmoves_past_days = EarthmovesPastDay.all
  end

  # GET /earthmoves_past_days/1
  # GET /earthmoves_past_days/1.json
  def show
  end

  # GET /earthmoves_past_days/new
  def new
    @earthmoves_past_day = EarthmovesPastDay.new
  end

  # GET /earthmoves_past_days/1/edit
  def edit
  end

  # POST /earthmoves_past_days
  # POST /earthmoves_past_days.json
  def create
    @earthmoves_past_day = EarthmovesPastDay.new(earthmoves_past_day_params)

    respond_to do |format|
      if @earthmoves_past_day.save
        format.html { redirect_to @earthmoves_past_day, notice: 'Earthmoves past day was successfully created.' }
        format.json { render :show, status: :created, location: @earthmoves_past_day }
      else
        format.html { render :new }
        format.json { render json: @earthmoves_past_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /earthmoves_past_days/1
  # PATCH/PUT /earthmoves_past_days/1.json
  def update
    respond_to do |format|
      if @earthmoves_past_day.update(earthmoves_past_day_params)
        format.html { redirect_to @earthmoves_past_day, notice: 'Earthmoves past day was successfully updated.' }
        format.json { render :show, status: :ok, location: @earthmoves_past_day }
      else
        format.html { render :edit }
        format.json { render json: @earthmoves_past_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /earthmoves_past_days/1
  # DELETE /earthmoves_past_days/1.json
  def destroy
    @earthmoves_past_day.destroy
    respond_to do |format|
      format.html { redirect_to earthmoves_past_days_url, notice: 'Earthmoves past day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_earthmoves_past_day
      @earthmoves_past_day = EarthmovesPastDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def earthmoves_past_day_params
      params.require(:earthmoves_past_day).permit(:time, :latitude, :longitude, :depth, :mag)
    end
end
