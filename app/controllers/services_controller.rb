class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :update, :destroy]

  # GET /campaigns/1/services
  def index
    if params[:campaign_id]
      @services = Campaign.find(params[:campaign_id]).services
    else
      @services = Service.all
    end

    render json: @services
  end

  # GET /services/1
  def show
    @service = Service.find(params[:id])

    render json: @service
  end

  # POST /services
  def create
    @service = Service.new(service_params)

    if @service.save
      render json: @service, status: :created, location: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /services/1
  def update
    if @service.update(service_params)
      render json: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /services/1
  def destroy
    @service.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_params
      params.require(:service).permit(:release_date, :title, :subscription_cost, :status, :total_earned, :total_subscriptions, :total_views, :total_vacancies, :campaign_id)
    end
end
