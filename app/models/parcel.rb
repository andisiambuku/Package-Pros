class Parcel < ApplicationRecord
    validates :weight, :description, :pickup_address, :destination, :received_by, presence: true
end
