class CommentSerializer < ActiveModel::Serializer
  belongs_to :post 
  belongs_to :user
  attributes :id, :text, :post_id, :user_id
end
