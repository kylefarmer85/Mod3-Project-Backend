class UserSerializer < ActiveModel::Serializer
  has_many :comments, :posts
  attributes :id, :username, :email, :profile_pic
end
