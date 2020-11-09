class UserSerializer < ActiveModel::Serializer
  has_many :comments
  has_many :posts
  attributes :id, :username, :email, :profile_pic
end
