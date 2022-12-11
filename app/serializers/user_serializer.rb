class UserSerializer < ActiveModel::Serializer
#   #serialize username,phone & email
  attributes :id, :password, :email
end