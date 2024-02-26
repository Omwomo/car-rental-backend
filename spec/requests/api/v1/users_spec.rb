require 'swagger_helper'

RSpec.describe 'Api::V1::Users', type: :request do
  # rubocop:disable Metrics/BlockLength
  path '/api/v1/users' do
    get('list users') do
      tags 'Users'
      produces 'application/json'
      response(200, 'All users fetched') do
        description 'All users fetched successfully'
        schema type: :object,
               properties: {
                 success: { type: :boolean },
                 users: {
                   type: :array,
                   items: {
                     type: :object,
                     properties: {
                       id: { type: :integer },
                       name: { type: :string },
                       email: { type: :string }
                       # Add other properties as needed
                     },
                     required: %w[id name email]
                   }
                 }
               }

        let(:id) do
          User.create(name: 'John', email: 'john@example.com', password: 'password',
                      password_confirmation: 'password').id
        end
        run_test!
      end
    end

    post('create user') do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          email: { type: :string },
          password: { type: :string },
          password_confirmation: { type: :string }
        },
        required: %w[name email password password_confirmation]
      }

      response(201, 'User created') do
        let(:user) do
          { name: 'Alice', email: 'alice@example.com', password: 'password',
            password_confirmation: 'password' }
        end
        run_test!
      end

      response(422, 'Invalid request') do
        let(:user) { { name: 'Bob', email: 'bob@example.com', password: 'password' } }
        run_test!
      end
    end
  end

  path '/api/v1/users/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show user') do
      tags 'Users'
      produces 'application/json'
      response(200, 'User fetched') do
        description 'User fetched successfully'
        schema type: :object,
               properties: {
                 success: { type: :boolean },
                 users: {
                   type: :array,
                   items: {
                     type: :object,
                     properties: {
                       id: { type: :integer },
                       name: { type: :string },
                       email: { type: :string }
                     },
                     required: %w[id name email]
                   }
                 }
               }

        let(:id) do
          User.create(name: 'John', email: 'john@example.com', password: 'password',
                      password_confirmation: 'password').id
        end
        run_test!
      end

      response(404, 'User not found') do
        let(:id) { 'invalid' }
        run_test!
      end
    end

    delete('delete user') do
      tags 'Users'
      response(200, 'User deleted') do
        let(:id) do
          User.create(name: 'John', email: 'john@example.com', password: 'password',
                      password_confirmation: 'password').id
        end
        run_test!
      end
    end
  end
  # rubocop:enable Metrics/BlockLength
end
