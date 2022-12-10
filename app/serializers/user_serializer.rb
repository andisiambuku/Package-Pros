class UserSerializer < ActiveModel::Serializer
#   #serialize username,phone & email
  attributes :id, :fullname, :telephone, :password, :email
end