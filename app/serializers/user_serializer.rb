class UserSerializer < ActiveModel::Serializer
  has_many :posts
  has_many :comments
  attributes :id, :username, :email, :profile_pic
end
