class CommentSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :post 
  attributes :id, :text, :post_id, :user_id
end
