class EventInstancesController < ApplicationController
  before_action :set_event_instance, only: %i[ show edit update destroy ]

  # GET /event_instances or /event_instances.json
  def index
    @event_instances = EventInstance.all
  end

  # GET /event_instances/1 or /event_instances/1.json
  def show
  end

  # GET /event_instances/new
  def new
    @event_instance = EventInstance.new
  end

  # GET /event_instances/1/edit
  def edit
  end

  # POST /event_instances or /event_instances.json
  def create
    @event_instance = EventInstance.new(event_instance_params)

    respond_to do |format|
      if @event_instance.save
        format.html { redirect_to event_instance_url(@event_instance), notice: "Event instance was successfully created." }
        format.json { render :show, status: :created, location: @event_instance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_instances/1 or /event_instances/1.json
  def update
    respond_to do |format|
      if @event_instance.update(event_instance_params)
        format.html { redirect_to event_instance_url(@event_instance), notice: "Event instance was successfully updated." }
        format.json { render :show, status: :ok, location: @event_instance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_instances/1 or /event_instances/1.json
  def destroy
    @event_instance.destroy!

    respond_to do |format|
      format.html { redirect_to event_instances_url, notice: "Event instance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_instance
      @event_instance = EventInstance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_instance_params
      params.require(:event_instance).permit(:event_id, :is_tiebreaker)
    end
end
