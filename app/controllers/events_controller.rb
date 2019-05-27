class EventsController < ApplicationController
    before_action :authorize!, only: [:create]

    def index
        @events = Event.all
        render json: @events, status: :ok
    end

    def show
        @event = Event.find(params[:id])
        render json: @event, status: :ok
    end

    def create
        @event = Event.new(event_params)
        if @event.save
            render json: @event, status: :created
        else
            render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        @event = Event.find(params[:id])
    end


    private

    def event_params
        params.require(:event).permit(:name)
    end
end
