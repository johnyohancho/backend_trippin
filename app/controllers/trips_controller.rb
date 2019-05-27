class TripsController < ApplicationController
    before_action :authorize!, only: [:create]

    def index
        @trips = Trip.all
        render json: @trips, status: :ok
    end

    def show
        @trip = Trip.find(params[:id])
        render json: @trip, status: :ok
    end

    def create
        @trip = Trip.new(trip_params)
        if @trip.save
            render json: @trip, status: :created
        else
            render json: { errors: @trip.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        @trip = Trip.find(params[:id])
    end

    
    private

    def trip_params
        params.require(:trip).permit(:name, :budget)
    end
end
