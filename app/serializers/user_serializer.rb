class UserSerializer < ActiveModel::Serializer
#   #serialize username,phone & email
  attributes :id, :username, :telephone, :password, :email
end