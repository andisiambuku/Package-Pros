class Parcel < ApplicationRecord
    validates :weight, :description, :pickup_address, :pickup_address, :received_by, presence: true
end
