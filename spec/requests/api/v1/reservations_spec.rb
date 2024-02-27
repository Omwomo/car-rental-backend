require 'swagger_helper'

RSpec.describe 'Api::V1::Reservations', type: :request do
  # rubocop:disable Metrics/BlockLength
  path '/api/v1/reservations' do
    get('list reservations') do
      tags 'Reservations'
      produces 'application/json'
      response(200, 'All reservations fetched') do
        description 'All reservations fetched successfully'
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   date: { type: :string, format: 'date' },
                   city: { type: :string },
                   user_id: { type: :integer },
                   item_id: { type: :integer }
                 },
                 required: %w[id date city user_id item_id]
               }

        let(:id) { Reservation.create(date: '2024-02-28', city: 'City1', user_id: 1, item_id: 1).id }
        run_test!
      end
    end

    post('create reservation') do
      tags 'Reservations'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          date: { type: :string, format: 'date' },
          city: { type: :string },
          user_id: { type: :integer },
          item_id: { type: :integer }
        },
        required: %w[date city user_id item_id]
      }

      response(201, 'Reservation created') do
        let(:reservation) { { date: '2024-02-28', city: 'City1', user_id: 1, item_id: 1 } }
        run_test!
      end

      response(422, 'Invalid request') do
        let(:reservation) { { date: '2024-02-28', city: 'City1', user_id: 1 } }
        run_test!
      end
    end
  end

  path '/api/v1/reservations/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show reservation') do
      tags 'Reservations'
      produces 'application/json'
      response(200, 'Reservation fetched') do
        description 'All reservations fetched successfully'
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   date: { type: :string, format: 'date' },
                   city: { type: :string },
                   user_id: { type: :integer },
                   item_id: { type: :integer }
                 },
                 required: %w[id date city user_id item_id]
               }

        let(:id) { Reservation.create(date: '2024-02-28', city: 'City1', user_id: 1, item_id: 1).id }
        run_test!
      end

      response(404, 'Reservation not found') do
        let(:id) { 'invalid' }
        run_test!
      end
    end

    delete('delete reservation') do
      tags 'Reservations'
      response(200, 'Reservation destroyed') do
        let(:id) { Reservation.create(date: '2024-02-28', city: 'City1', user_id: 1, item_id: 1).id }
        run_test!
      end
    end
  end
  # rubocop:enable Metrics/BlockLength
end
