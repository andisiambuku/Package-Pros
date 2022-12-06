class ParcelSerializer < ActiveModel::Serializer
  attributes :id, :description, :weight,:pickup_address,:present_location,:received_by
end
