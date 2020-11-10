class CommentSerializer < ActiveModel::Serializer
  belongs_to :post 
  belongs_to :user
  attributes :id, :text, :author, :post_id, :user_id
end
