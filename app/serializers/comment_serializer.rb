class CommentSerializer < ActiveModel::Serializer
  belongs_to :user, :post 
  attributes :id, :text, :post_id, :user_id
end
