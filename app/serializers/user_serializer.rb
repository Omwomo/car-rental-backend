class UserSerializer
  include JSONAPI::Serializer
  attributes :firstName, :lastName, :city, :username, :email, :admin
end
