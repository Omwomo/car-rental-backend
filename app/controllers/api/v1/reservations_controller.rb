module Api
  module V1
    class ReservationsController < ApplicationController
      before_action :set_reservation, only: %i[show destroy]

      # /api/v1/reservations
      def index
        @reservations = Reservation.all
        render json: @reservations
      end

      # /api/v1/reservations/:id
      def show
        render json: { reservation: @reservation, item: @reservation.item }
      end

      # /api/v1/reservations
      def create
        @reservation = Reservation.new(reservation_params)

        if @reservation.save
          render json: @reservation, status: :created
        else
          render json: { error: @reservation.errors.full_messages }, status: :unprocessable_entity
        end
      rescue StandardError => e
        render json: { error: e.message }, status: :internal_server_error
      end

      # /api/v1/reservations/:id
      def destroy
        if @reservation.destroy
          render json: { success: true, message: 'Reservation destroyed' }
        else
          render json: { success: false, message: @reservation.errors.full_messages }
        end
      end

      private

      def set_reservation
        @reservation = Reservation.find(params[:id])
      end

      def reservation_params
        params.require(:reservation).permit(:date, :city, :user_id, :item_id)
      end
    end
  end
end
