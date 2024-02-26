require 'swagger_helper'

RSpec.describe 'Api::V1::Items', type: :request do
  # rubocop:disable Metrics/BlockLength
  path '/api/v1/items' do
    get('list items') do
      tags 'Items'
      produces 'application/json'
      response(200, 'All items fetched') do
        description 'All items fetched successfully'
        schema type: :object,
               properties: {
                 message: { type: :array, items: { type: :string } },
                 data: {
                   type: :array,
                   items: {
                     type: :object,
                     properties: {
                       id: { type: :string },
                       name: { type: :string },
                       description: { type: :string },
                       image: { type: :string },
                       city: { type: :string },
                       financeFee: { type: :integer },
                       totalAmount: { type: :integer },
                       duration: { type: :integer },
                       apr: { type: :float },
                       purchaseFee: { type: :float },
                       adminId: { type: :integer }
                     },
                     required: %w[id name description image city financeFee totalAmount duration
                                  apr purchaseFee adminId]
                   }
                 }
               }

        let(:id) do
          Item.create(name: 'item1', description: 'description1', image: 'image1.jpg', city: 'City1', financeFee: 100,
                      totalAmount: 500, duration: 30, apr: 5.0, purchaseFee: 10.0, adminId: 1).id
        end
        run_test!
      end
    end

    post('create item') do
      tags 'Items'
      consumes 'application/json'
      parameter name: :item, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string },
          image: { type: :string },
          city: { type: :string },
          financeFee: { type: :integer },
          totalAmount: { type: :integer },
          duration: { type: :integer },
          apr: { type: :float },
          purchaseFee: { type: :float },
          adminId: { type: :integer }
        },
        required: %w[name description image city financeFee totalAmount duration apr
                     purchaseFee adminId]
      }

      response(200, 'successful') do
        let(:item) do
          { name: 'foo', description: 'bar', image: 'image.jpg', city: 'City', financeFee: 100, totalAmount: 500,
            duration: 30, apr: 5.0, purchaseFee: 10.0, adminId: 1 }
        end
        run_test!
      end

      response(422, 'invalid request') do
        let(:item) { { name: 'foo' } }
        run_test!
      end
    end
  end

  path '/api/v1/items/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show item') do
      tags 'Items'
      produces 'application/json'
      response(200, 'successful') do
        description 'car retrieved succesfully'
        schema type: :object,
               properties: {
                 message: { type: :array, items: { type: :string } },
                 data: {
                   type: :array,
                   items: {
                     type: :object,
                     properties: {
                       id: { type: :string },
                       name: { type: :string },
                       description: { type: :string },
                       image: { type: :string },
                       city: { type: :string },
                       financeFee: { type: :integer },
                       totalAmount: { type: :integer },
                       duration: { type: :integer },
                       apr: { type: :float },
                       purchaseFee: { type: :float },
                       adminId: { type: :integer }
                     },
                     required: %w[id name description image city financeFee totalAmount duration
                                  apr purchaseFee adminId]
                   }
                 }
               }

        let(:id) do
          Item.create(name: 'foo', description: 'bar', image: 'image.jpg', city: 'City', financeFee: 100,
                      totalAmount: 500, duration: 30, apr: 5.0, purchaseFee: 10.0, adminId: 1).id
        end
        run_test!
      end

      response(404, 'item not found') do
        let(:id) { 'invalid' }
        run_test!
      end
    end

    delete('delete item') do
      tags 'Items'
      response(200, 'successful') do
        let(:id) do
          Item.create(name: 'foo', description: 'bar', image: 'image.jpg', city: 'City', financeFee: 100,
                      totalAmount: 500, duration: 30, apr: 5.0, purchaseFee: 10.0, adminId: 1).id
        end
        run_test!
      end
    end
  end
  # rubocop:enable Metrics/BlockLength
end
