class PostSerializer < ActiveModel::Serializer
  belongs_to :user_id
  has_many :comments
  attributes :id, :title, :content, :image_url, :upvote, :github_url, :user_id
end
