class UserSerializer < ActiveModel::Serializer
#   #serialize full_name,phone & email
  attributes :id, :fullname, :phone_number, :password :email
end