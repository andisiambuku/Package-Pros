class UserSerializer < ActiveModel::Serializer
#   #serialize username,phone & email
  attributes :id, :username, :phone_number, :password, :email
end