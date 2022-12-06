class UserSerializer < ActiveModel::Serializer
#   #serialize full_name,phone & email
  attributes :full_name, :phone_number, :email
end