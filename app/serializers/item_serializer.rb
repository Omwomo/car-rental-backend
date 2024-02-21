class ItemSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :image, :city, :finance_fee, :total_amount_payable, :duration, :apr_representative
end
