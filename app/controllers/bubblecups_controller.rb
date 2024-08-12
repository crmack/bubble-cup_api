class BubblecupsController < ApplicationController
  before_action :set_bubblecup, only: %i[ show edit update destroy ]

  # GET /bubblecups or /bubblecups.json
  def index
    @bubblecups = Bubblecup.all
  end

  # GET /bubblecups/1 or /bubblecups/1.json
  def show
  end

  # GET /bubblecups/new
  def new
    @bubblecup = Bubblecup.new
  end

  # GET /bubblecups/1/edit
  def edit
  end

  # POST /bubblecups or /bubblecups.json
  def create
    @bubblecup = Bubblecup.new(bubblecup_params)

    respond_to do |format|
      if @bubblecup.save
        format.html { redirect_to bubblecup_url(@bubblecup), notice: "Bubblecup was successfully created." }
        format.json { render :show, status: :created, location: @bubblecup }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bubblecup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bubblecups/1 or /bubblecups/1.json
  def update
    respond_to do |format|
      if @bubblecup.update(bubblecup_params)
        format.html { redirect_to bubblecup_url(@bubblecup), notice: "Bubblecup was successfully updated." }
        format.json { render :show, status: :ok, location: @bubblecup }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bubblecup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bubblecups/1 or /bubblecups/1.json
  def destroy
    @bubblecup.destroy!

    respond_to do |format|
      format.html { redirect_to bubblecups_url, notice: "Bubblecup was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bubblecup
      @bubblecup = Bubblecup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bubblecup_params
      params.require(:bubblecup).permit(:year, :name)
    end
end
